import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

import '../../../domain/entities/song.dart';
import 'player_state.dart' as app_player_state;

/// Cubit for managing audio player state
class PlayerCubit extends Cubit<app_player_state.PlayerState> {
  final AudioPlayer _audioPlayer;

  Song? _currentSong;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerStateSubscription;

  PlayerCubit({required AudioPlayer audioPlayer})
      : _audioPlayer = audioPlayer,
        super(app_player_state.PlayerInitial()) {
    _listenToPlayerChanges();
  }

  /// Play a song
  Future<void> playSong(Song song) async {
    if (_currentSong?.id == song.id &&
        (state is app_player_state.PlayerPlaying ||
            state is app_player_state.PlayerPaused)) {
      // If it's the same song, just resume if paused
      if (state is app_player_state.PlayerPaused) {
        return resume();
      }
      return;
    }

    _currentSong = song;
    emit(app_player_state.PlayerLoading(song: song));

    try {
      // Set the audio source
      await _audioPlayer.setAudioSource(
        AudioSource.uri(
          Uri.parse(song.previewUrl),
          tag: MediaItem(
            id: song.id,
            title: song.title,
            artist: song.artist,
            artUri: Uri.parse(song.albumImage),
          ),
        ),
      );

      // Start playing
      await _audioPlayer.play();
    } catch (e) {
      emit(app_player_state.PlayerError(message: 'Error playing song: $e'));
    }
  }

  /// Pause the currently playing song
  Future<void> pause() async {
    if (_currentSong != null && state is app_player_state.PlayerPlaying) {
      await _audioPlayer.pause();
    }
  }

  /// Resume the paused song
  Future<void> resume() async {
    if (_currentSong != null && state is app_player_state.PlayerPaused) {
      await _audioPlayer.play();
    }
  }

  /// Stop the player completely
  Future<void> stop() async {
    await _audioPlayer.stop();
    _currentSong = null;
    emit(app_player_state.PlayerInitial());
  }

  /// Seek to a specific position in the song
  Future<void> seekTo(Duration position) async {
    if (_currentSong != null) {
      await _audioPlayer.seek(position);
    }
  }

  /// Listen to player changes and update state accordingly
  void _listenToPlayerChanges() {
    // Listen to position changes
    _positionSubscription = _audioPlayer.positionStream.listen((position) {
      _updatePlayerState(position);
    });

    // Listen to player state changes
    _playerStateSubscription =
        _audioPlayer.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        stop();
      }
    });
  }

  /// Update the player state based on current position
  void _updatePlayerState(Duration position) {
    if (_currentSong == null) return;

    final duration = _audioPlayer.duration ?? Duration.zero;

    if (_audioPlayer.playing) {
      emit(app_player_state.PlayerPlaying(
        song: _currentSong!,
        position: position,
        duration: duration,
      ));
    } else {
      emit(app_player_state.PlayerPaused(
        song: _currentSong!,
        position: position,
        duration: duration,
      ));
    }
  }

  @override
  Future<void> close() {
    _positionSubscription?.cancel();
    _playerStateSubscription?.cancel();
    _audioPlayer.dispose();
    return super.close();
  }
}
