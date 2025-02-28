import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/network/connectivity_cubit.dart';
import '../../../domain/entities/song.dart';
import '../../../domain/usecases/get_song_by_id.dart';
import '../../../domain/usecases/get_songs.dart';
import 'songs_state.dart';

class SongsCubit extends Cubit<SongsState> {
  final GetSongs _getSongs;
  final GetSongById _getSongById;
  final ConnectivityCubit _connectivityCubit;
  late final StreamSubscription _connectivitySubscription;

  SongsCubit({
    required GetSongs getSongs,
    required GetSongById getSongById,
    required ConnectivityCubit connectivityCubit,
  })  : _getSongs = getSongs,
        _getSongById = getSongById,
        _connectivityCubit = connectivityCubit,
        super(SongsInitial()) {
    // Subscribe to connectivity changes.
    _connectivitySubscription =
        _connectivityCubit.stream.listen((status) async {
      if (status == NetworkStatus.online) {
        // When connectivity is restored:
        // If the current state is an error OR if songs are loaded but the list is empty,
        // trigger a force refresh to fetch data from the API.
        if (state is SongsError) {
          await loadSongs(forceRefresh: true);
        } else if (state is SongsLoaded) {
          final loadedState = state as SongsLoaded;
          if (loadedState.songs.isEmpty) {
            await loadSongs(forceRefresh: true);
          }
        }
      }
    });
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }

  /// Loads all songs, optionally forcing a refresh from the API.
  Future<void> loadSongs({bool forceRefresh = false}) async {
    emit(SongsLoading());

    final result = await _getSongs(GetSongsParams(forceRefresh: forceRefresh));

    result.fold(
      (failure) async {
        // If a forceRefresh attempt fails, try to fallback on local data.
        if (forceRefresh) {
          final fallbackResult =
              await _getSongs(const GetSongsParams(forceRefresh: false));
          fallbackResult.fold(
            (fallbackFailure) =>
                emit(SongsError(message: fallbackFailure.message)),
            (songs) => emit(SongsLoaded(songs: songs, fromCache: true)),
          );
        } else {
          emit(SongsError(message: failure.message));
        }
      },
      (songs) => emit(SongsLoaded(songs: songs, fromCache: false)),
    );
  }

  /// Loads a specific song by ID and updates the current list.
  Future<void> loadSongById(String id) async {
    final currentSongs = state is SongsLoaded
        ? List<Song>.from((state as SongsLoaded).songs)
        : <Song>[];

    final result = await _getSongById(GetSongByIdParams(id: id));

    result.fold(
      (failure) => emit(SongsError(message: failure.message)),
      (updatedSong) {
        final index = currentSongs.indexWhere((song) => song.id == id);
        if (index >= 0) {
          currentSongs[index] = updatedSong;
        } else {
          currentSongs.add(updatedSong);
        }
        emit(SongsLoaded(songs: currentSongs, fromCache: false));
      },
    );
  }
}
