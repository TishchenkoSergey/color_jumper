import 'package:flutter/material.dart';

/// A reusable widget for displaying styled text with shadows and custom color.
class StyledText extends StatelessWidget {
  /// Creates an instance of [StyledText].
  const StyledText({
    required this.text,
    required this.color,
    this.fontSize = 20,
    this.fontWeight,
    super.key,
  });

  /// The text to display.
  final String text;

  /// The color of the text.
  final Color color;

  /// The font size of the text (optional).
  final double fontSize;

  /// The font weight of the text (optional).
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        shadows: const [
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Colors.white24,
          ),
        ],
      ),
    );
  }
}
