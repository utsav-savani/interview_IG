import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:just_audio_background/just_audio_background.dart';

import 'app.dart';
import 'core/constants/app_constants.dart';
import 'di/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Force portrait orientation.
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Load environment variables from .env file.
  await dotenv.load(fileName: "env/.env");

  // Initialize audio service for background playback.
  await JustAudioBackground.init(
    androidNotificationChannelId: AppConstants.channelId,
    androidNotificationChannelName: AppConstants.channelName,
    androidNotificationOngoing: true,
    androidShowNotificationBadge: true,
  );

  // Initialize dependency injection.
  await di.init();

  runApp(const App());
}
