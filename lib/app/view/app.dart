import 'package:color_jumper/app/route/route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

/// Application [App]
class App extends StatefulWidget {
  /// Application [App]
  const App({
    required this.serviceLocator,
    super.key,
  });

  /// The service locator used for dependency injection.
  final GetIt serviceLocator;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final route = AppRoute(
    serviceLocator: widget.serviceLocator,
  ).build(context);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routeInformationProvider: route.routeInformationProvider,
      routeInformationParser: route.routeInformationParser,
      routerDelegate: route.routerDelegate,
      backButtonDispatcher: route.backButtonDispatcher,
    );
  }
}
