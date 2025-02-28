import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/constants/app_constants.dart';
import '../presentation/screens/cart_screen.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/song_details_screen.dart';

/// Router configuration for the app
class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppConstants.homeRoute,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppConstants.homeRoute,
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppConstants.songDetailsRoute,
        name: 'songDetails',
        builder: (context, state) {
          final songId = state.pathParameters['id'] ?? '';
          return SongDetailsScreen(songId: songId);
        },
      ),
      GoRoute(
        path: AppConstants.cartRoute,
        name: 'cart',
        builder: (context, state) => const CartScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(
        title: const Text('Page Not Found'),
      ),
      body: Center(
        child: Text('Could not find page: ${state.uri.path}'),
      ),
    ),
  );
}
