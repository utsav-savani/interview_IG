import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:interviewpractical/core/network/connectivity_cubit.dart';
import 'package:interviewpractical/domain/entities/song.dart';
import 'package:interviewpractical/presentation/bloc/cart/cart_cubit.dart';
import 'package:interviewpractical/presentation/bloc/cart/cart_state.dart';
import 'package:interviewpractical/presentation/bloc/player/player_cubit.dart';
import 'package:interviewpractical/presentation/bloc/player/player_state.dart'
    as app_player_state;
import 'package:interviewpractical/presentation/bloc/songs/songs_cubit.dart';
import 'package:interviewpractical/presentation/bloc/songs/songs_state.dart';
import 'package:interviewpractical/presentation/screens/home_screen.dart';

/// Fake implementation for SongsCubit.
class FakeSongsCubit extends Cubit<SongsState> implements SongsCubit {
  FakeSongsCubit() : super(SongsInitial());

  @override
  Future<void> loadSongs({bool forceRefresh = false}) async {
    // Simulate a slight delay, then emit SongsLoaded with fromCache true.
    await Future.delayed(const Duration(milliseconds: 10));
    emit(SongsLoaded(songs: [testSong], fromCache: true));
  }

  @override
  Future<void> loadSongById(String id) async {}
}

/// A test song.
final testSong = Song(
  id: '1',
  title: 'Test Song',
  artist: 'Test Artist',
  albumImage: 'https://example.com/image.jpg',
  previewUrl: 'https://example.com/preview.m4a',
  releaseDate: '2025-02-21',
  genre: 'Pop',
);

/// Fake implementation for CartCubit.
class FakeCartCubit extends Cubit<CartState> implements CartCubit {
  FakeCartCubit() : super(CartLoaded(items: [], totalItems: 0));

  @override
  Future<void> refreshCartCount() async {}

  @override
  Future<void> addToCart(String songId) async {}

  @override
  Future<void> clearCart() {
    // TODO: implement clearCart
    throw UnimplementedError();
  }

  @override
  Future<void> loadCartItems() {
    // TODO: implement loadCartItems
    throw UnimplementedError();
  }

  @override
  Future<void> updateCartItemQuantity(String itemId, int quantity) {
    // TODO: implement updateCartItemQuantity
    throw UnimplementedError();
  }
}

/// Fake implementation for ConnectivityCubit.
class FakeConnectivityCubit extends Cubit<NetworkStatus>
    implements ConnectivityCubit {
  FakeConnectivityCubit(NetworkStatus initialState) : super(initialState);
}

/// Fake implementation for PlayerCubit.
class FakePlayerCubit extends Cubit<app_player_state.PlayerState>
    implements PlayerCubit {
  FakePlayerCubit() : super(app_player_state.PlayerInitial());

  @override
  Future<void> pause() async {}

  @override
  Future<void> resume() async {}

  @override
  Future<void> playSong(Song song) async {}

  @override
  Future<void> seekTo(Duration position) async {}

  @override
  Future<void> stop() {
    // TODO: implement stop
    throw UnimplementedError();
  }
}

/// Helper function to wrap HomeScreen with required providers.
Widget makeTestableWidget({required NetworkStatus connectivityStatus}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider<SongsCubit>.value(value: FakeSongsCubit()),
      BlocProvider<CartCubit>.value(value: FakeCartCubit()),
      BlocProvider<ConnectivityCubit>.value(
          value: FakeConnectivityCubit(connectivityStatus)),
      BlocProvider<PlayerCubit>.value(value: FakePlayerCubit()),
    ],
    child: MaterialApp(
      home: const HomeScreen(),
      // Minimal route configuration for go_router.
      onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Placeholder')))),
    ),
  );
}

void main() {
  testWidgets(
      'HomeScreen shows snackbar when songs loaded from cache (offline)',
      (WidgetTester tester) async {
    // Arrange: Provide connectivity as online (the snackbar is triggered by fromCache).
    await tester.pumpWidget(
        makeTestableWidget(connectivityStatus: NetworkStatus.online));

    // Act: Allow HomeScreen's initState to call loadSongs.
    await tester.pumpAndSettle();

    // Assert: Verify that the snackbar with the expected text appears.
    expect(find.text('No internet connection. Loaded data from local cache.'),
        findsOneWidget);
  });

  testWidgets(
      'HomeScreen shows song list when SongsLoaded state is emitted (online)',
      (WidgetTester tester) async {
    // For this test, we want the bloc to emit SongsLoaded with fromCache false.
    final fakeSongsCubit = FakeSongsCubit();
    // Manually emit the desired state.
    fakeSongsCubit.emit(SongsLoaded(songs: [testSong], fromCache: false));

    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<SongsCubit>.value(value: fakeSongsCubit),
          BlocProvider<CartCubit>.value(value: FakeCartCubit()),
          BlocProvider<ConnectivityCubit>.value(
              value: FakeConnectivityCubit(NetworkStatus.online)),
          BlocProvider<PlayerCubit>.value(value: FakePlayerCubit()),
        ],
        child: MaterialApp(
          home: const HomeScreen(),
          onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (_) =>
                  const Scaffold(body: Center(child: Text('Placeholder')))),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // Verify that the song title is displayed.
    expect(find.text('Test Song'), findsOneWidget);
  });
}
