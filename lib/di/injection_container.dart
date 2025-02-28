import 'package:connectivity_plus/connectivity_plus.dart'; // Use connectivity_plus
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';

import '../core/constants/app_constants.dart';
import '../core/network/connectivity_cubit.dart';
import '../core/network/network_info.dart';
import '../data/datasources/local/cart_local_datasource.dart';
import '../data/datasources/local/song_local_datasource.dart';
import '../data/datasources/remote/song_remote_datasource.dart';
import '../data/models/cart_item_model.dart';
import '../data/models/song_model.dart';
import '../data/repositories/cart_repository_impl.dart';
import '../data/repositories/song_repository_impl.dart';
import '../domain/repositories/cart_repository.dart';
import '../domain/repositories/song_repository.dart';
import '../domain/usecases/add_to_cart.dart';
import '../domain/usecases/clear_cart.dart';
import '../domain/usecases/get_cart_count.dart';
import '../domain/usecases/get_cart_items.dart';
import '../domain/usecases/get_song_by_id.dart';
import '../domain/usecases/get_songs.dart';
import '../domain/usecases/update_cart_item.dart';
import '../presentation/bloc/cart/cart_cubit.dart';
import '../presentation/bloc/player/player_cubit.dart';
import '../presentation/bloc/songs/songs_cubit.dart';

final sl = GetIt.instance;

/// Initialize all dependencies
Future<void> init() async {
  // Register Connectivity from connectivity_plus
  sl.registerLazySingleton<Connectivity>(() => Connectivity());

  // Register ConnectivityCubit using the registered Connectivity
  sl.registerLazySingleton(
      () => ConnectivityCubit(connectivity: sl<Connectivity>()));

  // Cubits
  sl.registerFactory(() => SongsCubit(
        getSongs: sl(),
        getSongById: sl(),
        connectivityCubit: sl(),
      ));

  sl.registerFactory(() => CartCubit(
        getCartItems: sl(),
        addToCart: sl(),
        updateCartItem: sl(),
        clearCart: sl(),
        getCartCount: sl(),
      ));

  sl.registerFactory(() => PlayerCubit(
        audioPlayer: sl(),
      ));

  // Use cases
  sl.registerLazySingleton(() => GetSongs(sl()));
  sl.registerLazySingleton(() => GetSongById(sl()));
  sl.registerLazySingleton(() => GetCartItems(sl()));
  sl.registerLazySingleton(() => AddToCart(sl()));
  sl.registerLazySingleton(() => UpdateCartItem(sl()));
  sl.registerLazySingleton(() => ClearCart(sl()));
  sl.registerLazySingleton(() => GetCartCount(sl()));

  // Repositories
  sl.registerLazySingleton<SongRepository>(() => SongRepositoryImpl(
        remoteDataSource: sl(),
        localDataSource: sl(),
        networkInfo: sl(),
      ));

  sl.registerLazySingleton<CartRepository>(() => CartRepositoryImpl(
        localDataSource: sl(),
      ));

  // Data sources
  sl.registerLazySingleton<SongRemoteDataSource>(
      () => SongRemoteDataSourceImpl());

  sl.registerLazySingleton<SongLocalDataSource>(() => SongLocalDataSourceImpl(
        isar: sl(),
      ));

  sl.registerLazySingleton<CartLocalDataSource>(() => CartLocalDataSourceImpl(
        isar: sl(),
      ));

  // Core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(sl<Connectivity>()));

  // External libraries
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => AudioPlayer());

  // Initialize Isar database
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [SongModelSchema, CartItemModelSchema],
    directory: dir.path,
    name: AppConstants.databaseName,
  );
  sl.registerLazySingleton(() => isar);
}
