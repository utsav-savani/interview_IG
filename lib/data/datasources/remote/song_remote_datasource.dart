import 'dart:convert';

import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/api_service.dart';
import '../../../../core/network/app_logger.dart';
import '../../models/song_model.dart';

abstract class SongRemoteDataSource {
  /// Fetches the top 20 songs from the iTunes API
  Future<List<SongModel>> getTopSongs();
}

class SongRemoteDataSourceImpl implements SongRemoteDataSource {
  // Access the singleton instance directly
  final ApiService _apiService = ApiService();
  final AppLogger _logger = AppLogger();

  // No parameters needed in the constructor
  SongRemoteDataSourceImpl();

  @override
  Future<List<SongModel>> getTopSongs() async {
    try {
      _logger.i('Fetching top songs from iTunes API');

      final response = await _apiService.get(
        ApiEndpoints.topSongs,
        requiresAuth: false,
      );

      final dynamic responseData =
          response.data is String ? jsonDecode(response.data) : response.data;

      _logger.d('Successfully fetched top songs data');

      final apiResponse = ApiResponse.fromJson(responseData);

      // Log the number of songs fetched
      _logger.i('Parsed ${apiResponse.feed.entry.length} songs from API');

      // Convert API response entries to SongModel objects
      return apiResponse.feed.entry
          .map((entry) => SongModel.fromEntry(entry))
          .toList();
    } catch (e) {
      _logger.e('Error fetching top songs', e);
      if (e is AppException) {
        rethrow;
      }
      throw ServerException('Failed to fetch top songs: $e');
    }
  }
}
