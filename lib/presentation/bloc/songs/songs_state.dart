import 'package:equatable/equatable.dart';

import '../../../domain/entities/song.dart';

abstract class SongsState extends Equatable {
  const SongsState();

  @override
  List<Object?> get props => [];
}

class SongsInitial extends SongsState {}

class SongsLoading extends SongsState {}

class SongsLoaded extends SongsState {
  final List<Song> songs;
  final bool fromCache; // true if loaded from local cache

  const SongsLoaded({required this.songs, this.fromCache = false});

  @override
  List<Object?> get props => [songs, fromCache];
}

class SongsError extends SongsState {
  final String message;

  const SongsError({required this.message});

  @override
  List<Object?> get props => [message];
}
