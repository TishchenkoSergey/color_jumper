import 'package:flutter/material.dart';

/// The main screen of the application.
/// This screen displays a simple centered greeting message.
class MainScreen extends StatelessWidget {
  /// Creates a [MainScreen] widget.
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hey there'),
    );
  }
}
