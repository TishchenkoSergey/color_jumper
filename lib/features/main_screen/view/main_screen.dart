import 'package:color_jumper/features/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The main screen of the application.
/// This screen displays a simple centered greeting message.
class MainScreen extends StatelessWidget {
  /// Creates an instance of [MainScreen].
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: GestureDetector(
            onTap: context.read<MainCubit>().changeColor,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              color: state.colorInfo!.backgroundColor,
              width: double.infinity,
              height: double.infinity,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Spacer(),
                      StyledText(
                        text: 'Hey there',
                        color: state.colorInfo!.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StyledText(
                            text: 'Color: ${state.colorInfo!.colorName}',
                            color: state.colorInfo!.textColor,
                          ),
                          StyledText(
                            text: 'Taps: ${state.tapCount}',
                            color: state.colorInfo!.textColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
