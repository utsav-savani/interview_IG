import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/network/connectivity_cubit.dart';
import 'core/theme/app_theme.dart';
import 'di/injection_container.dart';
import 'presentation/bloc/cart/cart_cubit.dart';
import 'presentation/bloc/player/player_cubit.dart';
import 'presentation/bloc/songs/songs_cubit.dart';
import 'routes/app_router.dart';

/// The main app widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectivityCubit>(
          create: (_) => sl<ConnectivityCubit>(),
        ),
        BlocProvider<SongsCubit>(
          create: (_) => sl<SongsCubit>(),
        ),
        BlocProvider<CartCubit>(
          create: (_) => sl<CartCubit>()..loadCartItems(),
        ),
        BlocProvider<PlayerCubit>(
          create: (_) => sl<PlayerCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Top Songs App',
        theme: AppTheme.lightTheme,
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
