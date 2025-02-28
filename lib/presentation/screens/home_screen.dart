import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../../core/utils/ui_helpers.dart' as UIHelpers;
import '../bloc/cart/cart_cubit.dart';
import '../bloc/cart/cart_state.dart';
import '../bloc/songs/songs_cubit.dart';
import '../bloc/songs/songs_state.dart';
import '../widgets/network_sensitive_app_bar.dart';
import '../widgets/song_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SongsCubit>().loadSongs();
    context.read<CartCubit>().refreshCartCount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('homeScreenScaffold'),
      appBar: NetworkSensitiveAppBar(
        title: 'Top 20 Songs',
        actions: [_buildCartButton()],
      ),
      body: BlocListener<SongsCubit, SongsState>(
        listener: (context, state) {
          if (state is SongsLoaded && state.fromCache) {
            UIHelpers.showSnackBar(
              context,
              'No internet connection. Loaded data from local cache.',
              duration: const Duration(seconds: 3),
            );
          }
        },
        child: RefreshIndicator(
          onRefresh: () =>
              context.read<SongsCubit>().loadSongs(forceRefresh: true),
          child: BlocBuilder<SongsCubit, SongsState>(
            builder: (context, state) {
              if (state is SongsInitial || state is SongsLoading) {
                return UIHelpers.buildLoading();
              } else if (state is SongsLoaded) {
                return _buildSongsList(context, state.songs);
              } else if (state is SongsError) {
                return UIHelpers.buildError(
                  context,
                  state.message,
                  () =>
                      context.read<SongsCubit>().loadSongs(forceRefresh: true),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCartButton() {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        int cartCount = 0;
        if (state is CartLoaded) cartCount = state.totalItems;

        return Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () => context.push(AppConstants.cartRoute),
            ),
            if (cartCount > 0)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    cartCount.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildSongsList(BuildContext context, List songs) {
    return ListView.builder(
      itemCount: songs.length,
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      itemBuilder: (context, index) {
        final song = songs[index];
        return SongListItem(
          song: song,
          onTap: () => context.push('/song/${song.id}'),
          onAddToCart: () => UIHelpers.addToCart(context, song.id, song.title),
        );
      },
    );
  }
}
