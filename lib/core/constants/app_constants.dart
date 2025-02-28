import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Constants used throughout the app
class AppConstants {
  // API URLs
  static String? baseUrl = dotenv.env['BASEURL'];

  static const String homeRoute = '/';
  static const String songDetailsRoute = '/song/:id';
  static const String cartRoute = '/cart';

  // Database constants
  static const String databaseName = 'top_songs.isar';

  // Animation durations
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);

  // UI Constants
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 8.0;

  // Media player notification
  static const String channelId =
      'com.example.interviewpractical.channel.audio';
  static const String channelName = 'Top Songs Audio Player';
  static const String channelDescription =
      'Audio playback controls for Top Songs app';
}
