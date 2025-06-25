import 'package:color_jumper/features/features.dart';
import 'package:flutter/material.dart';

/// Application [App]
class App extends StatelessWidget {
  /// Application [App]
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
