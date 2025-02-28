import 'package:equatable/equatable.dart';

import '../../../domain/entities/song.dart';

/// States for the audio player feature
abstract class PlayerState extends Equatable {
  const PlayerState();

  @override
  List<Object?> get props => [];
}

/// Initial state when no song is playing
class PlayerInitial extends PlayerState {}

/// State while loading a song
class PlayerLoading extends PlayerState {
  final Song song;

  const PlayerLoading({required this.song});

  @override
  List<Object?> get props => [song];
}

/// State when a song is playing
class PlayerPlaying extends PlayerState {
  final Song song;
  final Duration position;
  final Duration duration;

  const PlayerPlaying({
    required this.song,
    required this.position,
    required this.duration,
  });

  @override
  List<Object?> get props => [song, position, duration];
}

/// State when a song is paused
class PlayerPaused extends PlayerState {
  final Song song;
  final Duration position;
  final Duration duration;

  const PlayerPaused({
    required this.song,
    required this.position,
    required this.duration,
  });

  @override
  List<Object?> get props => [song, position, duration];
}

/// State when there's an error with the player
class PlayerError extends PlayerState {
  final String message;

  const PlayerError({required this.message});

  @override
  List<Object?> get props => [message];
}
