import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/app_constants.dart';
import '../../core/utils/ui_helpers.dart' as UIHelpers;
import '../../domain/entities/song.dart';
import '../bloc/player/player_cubit.dart';
import '../bloc/player/player_state.dart' as app_player_state;

class SongListItem extends StatelessWidget {
  final Song song;
  final VoidCallback onTap;
  final VoidCallback onAddToCart;

  const SongListItem({
    super.key,
    required this.song,
    required this.onTap,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppConstants.defaultBorderRadius),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // Song image with hero animation
              UIHelpers.buildHeroImage(
                  song.albumImage, 'song-image-${song.id}'),

              const SizedBox(width: 16),

              // Song info
              Expanded(
                child: UIHelpers.buildSongInfo(song.title, song.artist),
              ),

              // Action buttons
              _buildActionButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return BlocBuilder<PlayerCubit, app_player_state.PlayerState>(
      builder: (context, state) {
        bool isPlaying = false;
        bool isThisSong = false;

        if (state is app_player_state.PlayerPlaying) {
          isPlaying = true;
          isThisSong = state.song.id == song.id;
        } else if (state is app_player_state.PlayerPaused) {
          isPlaying = false;
          isThisSong = state.song.id == song.id;
        }

        return Row(
          children: [
            // Play/Pause button with connectivity check
            IconButton(
              icon: Icon(
                isThisSong && isPlaying ? Icons.pause : Icons.play_arrow,
                color: isThisSong ? Theme.of(context).primaryColor : null,
              ),
              onPressed: () => UIHelpers.handleSongPlay(
                  context, song, isThisSong, isPlaying),
            ),

            // Add to cart button
            IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: onAddToCart,
            ),
          ],
        );
      },
    );
  }
}
