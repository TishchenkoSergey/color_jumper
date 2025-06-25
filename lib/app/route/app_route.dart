import 'package:color_jumper/app/route/app_route_enum.dart';
import 'package:color_jumper/features/features.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

/// Manages the application's route configuration using [GoRouter].
class AppRoute {
  /// Builds and returns the application's [GoRouter] instance.
  GoRouter build(BuildContext context) {
    return GoRouter(
      routes: [
        _buildMainPage(),
      ],
      initialLocation: '/${Routes.mainScreen.name}',
    );
  }

  GoRoute _buildMainPage() {
    return GoRoute(
      name: Routes.mainScreen.name,
      path: '/${Routes.mainScreen.name}',
      pageBuilder: (context, state) => const CupertinoPage(
        child:  MainScreen(),
      ),
    );
  }
}
