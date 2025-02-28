import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/song.dart';
import '../repositories/song_repository.dart';

/// Usecase to get all songs
class GetSongs implements UseCase<List<Song>, GetSongsParams> {
  final SongRepository repository;

  GetSongs(this.repository);

  @override
  Future<Either<Failure, List<Song>>> call(GetSongsParams params) {
    return repository.getSongs(forceRefresh: params.forceRefresh);
  }
}

class GetSongsParams extends Equatable {
  final bool forceRefresh;

  const GetSongsParams({this.forceRefresh = false});

  @override
  List<Object?> get props => [forceRefresh];
}
