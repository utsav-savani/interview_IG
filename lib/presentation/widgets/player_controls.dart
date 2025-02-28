import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/ui_helpers.dart' as UIHelpers;
import '../../domain/entities/song.dart';
import '../bloc/player/player_cubit.dart';
import '../bloc/player/player_state.dart' as app_player_state;

class PlayerControls extends StatelessWidget {
  final Song song;
  final bool isThisSongPlaying;
  final app_player_state.PlayerState playerState;

  const PlayerControls({
    super.key,
    required this.song,
    required this.isThisSongPlaying,
    required this.playerState,
  });

  @override
  Widget build(BuildContext context) {
    // If this song is not loaded in the player, show a simple play button
    if (!isThisSongPlaying) {
      return Column(
        children: [
          const Text(
            'Preview',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: () => context.read<PlayerCubit>().playSong(song),
            icon: const Icon(Icons.play_arrow),
            label: const Text('Play'),
          ),
        ],
      );
    }

    // If this song is loaded in the player, get position and state information
    Duration position = Duration.zero;
    Duration duration = Duration.zero;
    bool isPlaying = false;

    if (playerState is app_player_state.PlayerPlaying) {
      final state = playerState as app_player_state.PlayerPlaying;
      position = state.position;
      duration = state.duration;
      isPlaying = true;
    } else if (playerState is app_player_state.PlayerPaused) {
      final state = playerState as app_player_state.PlayerPaused;
      position = state.position;
      duration = state.duration;
      isPlaying = false;
    }

    // Only show slider if duration is greater than zero
    final showSlider = duration.inMilliseconds > 0;

    return Column(
      children: [
        const Text(
          'Preview',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),

        // Show either audio controls or loading message based on slider readiness
        if (showSlider)
          UIHelpers.buildAudioSlider(
            context,
            position,
            duration,
            (newPosition) => context.read<PlayerCubit>().seekTo(newPosition),
          )
        else ...[
          const SizedBox(height: 16),
          const Text("Loading audio...",
              style: TextStyle(fontStyle: FontStyle.italic)),
          const SizedBox(height: 16),
        ],

        const SizedBox(height: 8),

        // Play/pause button or loading indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (playerState is app_player_state.PlayerLoading)
              const CircularProgressIndicator()
            else
              UIHelpers.buildPlayPauseButton(
                context,
                isPlaying,
                () => isPlaying
                    ? context.read<PlayerCubit>().pause()
                    : context.read<PlayerCubit>().resume(),
              ),
          ],
        ),
      ],
    );
  }
}
