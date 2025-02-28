import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../domain/entities/song.dart';
import '../../../domain/repositories/song_repository.dart';
import '../datasources/local/song_local_datasource.dart';
import '../datasources/remote/song_remote_datasource.dart';

class SongRepositoryImpl implements SongRepository {
  final SongRemoteDataSource remoteDataSource;
  final SongLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  SongRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Song>>> getSongs(
      {bool forceRefresh = false}) async {
    try {
      if (forceRefresh) {
        return await _getFromRemote();
      }

      // Try to get from local first
      final hasCachedSongs = await localDataSource.hasCachedSongs();

      if (hasCachedSongs) {
        final localSongs = await localDataSource.getCachedSongs();
        return Right(localSongs.map((model) => model.toDomain()).toList());
      }

      // If no cached data, get from remote
      return await _getFromRemote();
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Song>> getSongById(String id) async {
    try {
      final song = await localDataSource.getSongById(id);
      return Right(song.toDomain());
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } on NotFoundException catch (e) {
      return Left(CacheFailure(message: e.message));
    }
  }

  /// Helper method to get data from remote and cache it
  Future<Either<Failure, List<Song>>> _getFromRemote() async {
    // Check for internet connection
    if (await networkInfo.isConnected) {
      try {
        final remoteSongs = await remoteDataSource.getTopSongs();

        // Cache the songs locally
        await localDataSource.cacheSongs(remoteSongs);

        // Get cached songs with proper IDs
        final cachedSongs = await localDataSource.getCachedSongs();

        return Right(cachedSongs.map((model) => model.toDomain()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return const Left(NetworkFailure());
    }
  }
}
