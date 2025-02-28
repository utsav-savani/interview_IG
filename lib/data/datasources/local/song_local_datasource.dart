import 'package:isar/isar.dart';

import '../../../../core/errors/exceptions.dart';
import '../../models/song_model.dart';

abstract class SongLocalDataSource {
  /// Caches the top songs in the local database
  Future<void> cacheSongs(List<SongModel> songs);

  /// Gets the cached songs from the local database
  Future<List<SongModel>> getCachedSongs();

  /// Gets a specific song by ID
  Future<SongModel> getSongById(String id);

  /// Checks if there are cached songs
  Future<bool> hasCachedSongs();
}

class SongLocalDataSourceImpl implements SongLocalDataSource {
  final Isar isar;

  SongLocalDataSourceImpl({required this.isar});

  @override
  Future<void> cacheSongs(List<SongModel> songs) async {
    try {
      await isar.writeTxn(() async {
        // Clear existing songs before caching new ones
        await isar.songModels.clear();

        // Cache the new songs
        await isar.songModels.putAll(songs);
      });
    } catch (e) {
      throw CacheException('Failed to cache songs: $e');
    }
  }

  @override
  Future<List<SongModel>> getCachedSongs() async {
    try {
      final songs = await isar.songModels.where().findAll();

      if (songs.isEmpty) {
        throw const CacheException('No songs found in cache');
      }

      return songs;
    } catch (e) {
      throw CacheException('Failed to get cached songs: $e');
    }
  }

  @override
  Future<SongModel> getSongById(String id) async {
    try {
      final song = await isar.songModels.filter().songIdEqualTo(id).findFirst();

      if (song == null) {
        throw const NotFoundException('Song not found');
      }

      return song;
    } catch (e) {
      if (e is NotFoundException) {
        rethrow;
      }
      throw CacheException('Failed to get song: $e');
    }
  }

  @override
  Future<bool> hasCachedSongs() async {
    try {
      final count = await isar.songModels.count();
      return count > 0;
    } catch (e) {
      return false;
    }
  }
}
