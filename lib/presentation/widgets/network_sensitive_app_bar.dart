import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewpractical/core/theme/app_theme.dart';

import '../../core/network/connectivity_cubit.dart';

class NetworkSensitiveAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const NetworkSensitiveAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityCubit, NetworkStatus>(
      builder: (context, networkStatus) {
        // Change app bar color: red when offline, blue when online.
        final Color appBarColor = networkStatus == NetworkStatus.offline
            ? AppTheme.errorColor
            : AppTheme.primaryColor;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: appBarColor,
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(title),
            actions: actions,
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
