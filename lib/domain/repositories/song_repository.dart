import 'package:dartz/dartz.dart';

import '../../../core/errors/failures.dart';
import '../entities/song.dart';

/// Repository interface for song-related operations
abstract class SongRepository {
  /// Fetches all songs, either from API (if [forceRefresh] is true) or from local database
  Future<Either<Failure, List<Song>>> getSongs({bool forceRefresh = false});

  /// Gets a specific song by ID
  Future<Either<Failure, Song>> getSongById(String id);
}
