import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/song.dart';
import '../repositories/song_repository.dart';

/// Usecase to get a specific song by ID
class GetSongById implements UseCase<Song, GetSongByIdParams> {
  final SongRepository repository;

  GetSongById(this.repository);

  @override
  Future<Either<Failure, Song>> call(GetSongByIdParams params) {
    return repository.getSongById(params.id);
  }
}

class GetSongByIdParams extends Equatable {
  final String id;

  const GetSongByIdParams({required this.id});

  @override
  List<Object?> get props => [id];
}
