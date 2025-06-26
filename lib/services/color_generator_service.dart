import 'dart:math';
import 'package:color_jumper/constant/constants.dart';
import 'package:color_jumper/models/models.dart';
import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

/// An abstract service for generating color-related data.
abstract class ColorGeneratorService {
  /// Generates random color data including background, text color, and name.
  ColorInfo generateColorInfo();
}

/// Default implementation of [ColorGeneratorService] using [Random].
/// Generates a random color, computes its contrast color, and guesses a name for it using the [ColorNames] package.
@Injectable(as: ColorGeneratorService)
class ColorGeneratorServiceImpl implements ColorGeneratorService {
  final Random _random = Random(DateTime.now().microsecond);

  @override
  ColorInfo generateColorInfo() {
    final color = _generateRandomColor();
    final textColor = _getContrastingTextColor(color);
    final name = _getColorName(color);

    return ColorInfo(
      backgroundColor: color,
      textColor: textColor,
      colorName: name,
    );
  }

  Color _generateRandomColor() {
    return Color.fromARGB(
      kColorTransparent,
      _colorRangeValue(),
      _colorRangeValue(),
      _colorRangeValue(),
    );
  }

  int _colorRangeValue() {
    return _random.nextInt(kColorMaxRangeValue);
  }

  Color _getContrastingTextColor(Color color) {
    return color.computeLuminance() < kLuminanceDarkThreshold
        ? Colors.white
        : Colors.black;
  }

  String _getColorName(Color color) {
    return ColorNames.guess(color);
  }
}
