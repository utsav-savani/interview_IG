import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

/// Theme configuration for the app
class AppTheme {
  // Colors
  static const Color primaryColor = Color(0xFF1976D2); // Blue 700

  /// An amber accent as a secondary color adds a warm, inviting touch.
  static const Color secondaryColor = Color(0xFFFFC107); // Amber 500

  /// A clean white background helps content stand out.
  static const Color backgroundColor = Color(0xFFFFFFFF);

  /// White is still a great choice for card backgrounds.
  static const Color cardColor = Color(0xFFFFFFFF);

  /// A deep red for error messages provides clear and immediate feedback.
  static const Color errorColor = Color(0xFFD32F2F); // Red 700

  /// Dark grey text for primary text ensures high readability.
  static const Color textPrimary = Color(0xFF212121); // Grey 900

  /// A medium grey for secondary text to keep the focus on primary content.
  static const Color textSecondary = Color(0xFF757575); // Grey 600

  /// Light theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
        background: backgroundColor,
        error: errorColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      cardTheme: CardTheme(
        color: cardColor,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.defaultBorderRadius),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(AppConstants.defaultBorderRadius),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPadding,
            vertical: AppConstants.defaultPadding / 2,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(AppConstants.defaultBorderRadius),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPadding,
            vertical: AppConstants.defaultPadding / 2,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: textPrimary,
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          color: textPrimary,
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: textPrimary,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: textPrimary,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: textPrimary,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: textPrimary,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(color: textPrimary),
        bodyMedium: TextStyle(color: textPrimary),
      ),
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: backgroundColor,
      iconTheme: const IconThemeData(
        color: primaryColor,
      ),
      dividerTheme: const DividerThemeData(
        color: Color(0xFFEEEEEE),
        thickness: 1,
      ),
    );
  }
}
