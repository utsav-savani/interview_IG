import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/song.dart';
import '../../../presentation/bloc/player/player_cubit.dart';
import '../../network/connectivity_cubit.dart';
import 'duration_helper.dart';
import 'snackbar_helper.dart';

Future<void> handleSongPlay(
    BuildContext context, Song song, bool isThisSong, bool isPlaying) async {
  final networkStatus = context.read<ConnectivityCubit>().state;
  if (networkStatus == NetworkStatus.offline) {
    showSnackBar(context, 'Cannot play song offline.',
        duration: const Duration(seconds: 2));
    return;
  }
  final playerCubit = context.read<PlayerCubit>();
  if (isThisSong) {
    if (isPlaying) {
      playerCubit.pause();
    } else {
      playerCubit.resume();
    }
  } else {
    playerCubit.playSong(song);
  }
}

/// Returns a widget that builds an audio slider and displays current position and duration.
Widget buildAudioSlider(BuildContext context, Duration position,
    Duration duration, Function(Duration) onSeek) {
  return Column(
    children: [
      Slider(
        value: position.inMilliseconds.toDouble(),
        min: 0,
        max: duration.inMilliseconds.toDouble(),
        onChanged: (value) {
          final newPosition = Duration(milliseconds: value.toInt());
          onSeek(newPosition);
        },
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(formatDuration(position)),
            Text(formatDuration(duration)),
          ],
        ),
      ),
    ],
  );
}

/// Returns a widget for a play/pause button.
Widget buildPlayPauseButton(
    BuildContext context, bool isPlaying, VoidCallback onPlayPause) {
  return ElevatedButton.icon(
    onPressed: onPlayPause,
    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
    label: Text(isPlaying ? 'Pause' : 'Play'),
  );
}
