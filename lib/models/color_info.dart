import 'package:flutter/material.dart';

/// Holds color data including background, contrasting text color, and name.
class ColorInfo {
  /// The generated background color.
  final Color backgroundColor;

  /// The contrasting text color (black or white) based on the background.
  final Color textColor;

  /// A human-readable name of the background color.
  final String colorName;

  /// Creates a [ColorInfo] instance with the given background color, text color, and color name.
  const ColorInfo({
    required this.backgroundColor,
    required this.textColor,
    required this.colorName,
  });
}
