import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/app_constants.dart';
import '../../core/utils/ui_helpers.dart' as UIHelpers;
import '../bloc/player/player_cubit.dart';
import '../bloc/player/player_state.dart' as app_player_state;
import '../bloc/songs/songs_cubit.dart';
import '../bloc/songs/songs_state.dart';
import '../widgets/network_sensitive_app_bar.dart';
import '../widgets/player_controls.dart';

class SongDetailsScreen extends StatefulWidget {
  final String songId;

  const SongDetailsScreen({
    super.key,
    required this.songId,
  });

  @override
  State<SongDetailsScreen> createState() => _SongDetailsScreenState();
}

class _SongDetailsScreenState extends State<SongDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SongsCubit>().loadSongById(widget.songId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NetworkSensitiveAppBar(title: 'Song Details'),
      body: BlocBuilder<SongsCubit, SongsState>(
        builder: (context, state) {
          if (state is SongsInitial || state is SongsLoading) {
            return UIHelpers.buildLoading();
          } else if (state is SongsLoaded) {
            if (state.songs.isEmpty) {
              return const Center(child: Text('Song not found'));
            }

            final song = state.songs.firstWhere(
              (s) => s.id == widget.songId,
              orElse: () => state.songs.first,
            );

            return SingleChildScrollView(
              padding: const EdgeInsets.all(AppConstants.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Album image
                  Hero(
                    tag: 'song-image-${song.id}',
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            AppConstants.defaultBorderRadius),
                        child: CachedNetworkImage(
                          imageUrl: song.albumImage,
                          height: 250,
                          width: 250,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            height: 250,
                            width: 250,
                            color: Colors.grey.shade300,
                            child: const Center(
                                child: CircularProgressIndicator()),
                          ),
                          errorWidget: (context, url, error) => Container(
                            height: 250,
                            width: 250,
                            color: Colors.grey.shade300,
                            child: const Icon(Icons.error),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Song info
                  Text(song.title,
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 8),
                  Text('Artist: ${song.artist}',
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text('Genre: ${song.genre}',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 8),
                  Text('Released: ${song.releaseDate}',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 32),

                  // Add to cart button
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () =>
                          UIHelpers.addToCart(context, song.id, song.title),
                      icon: const Icon(Icons.add_shopping_cart),
                      label: const Text('Add to Cart'),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Player controls
                  BlocBuilder<PlayerCubit, app_player_state.PlayerState>(
                    builder: (context, playerState) {
                      bool isThisSongPlaying = false;

                      if (playerState is app_player_state.PlayerPlaying) {
                        isThisSongPlaying = playerState.song.id == song.id;
                      } else if (playerState is app_player_state.PlayerPaused) {
                        isThisSongPlaying = playerState.song.id == song.id;
                      } else if (playerState
                          is app_player_state.PlayerLoading) {
                        isThisSongPlaying = playerState.song.id == song.id;
                      }

                      return PlayerControls(
                        song: song,
                        isThisSongPlaying: isThisSongPlaying,
                        playerState: playerState,
                      );
                    },
                  ),
                ],
              ),
            );
          } else if (state is SongsError) {
            return UIHelpers.buildError(
              context,
              state.message,
              () => context.read<SongsCubit>().loadSongById(widget.songId),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
