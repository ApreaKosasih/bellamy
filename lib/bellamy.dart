library bellamy;

import 'package:bellamy/colors.dart';
import 'package:flutter/material.dart';

@immutable
class AppTheme {
  static const colors = AppColors();

  const AppTheme._();

  static ThemeData custom({
    Color? primary = Colors.blue,
    Color? secondary = Colors.indigo,
    Color? error = Colors.red,
    Color? surface = Colors.white,
    Color? background = Colors.white,
    Brightness? brightness = Brightness.light,
    Color? onPrimary = Colors.white,
    Color? onSecondary = Colors.white,
    Color? onError = Colors.white,
    Color? onSurface = Colors.black,
    Color? onBackground = Colors.black,
  }) {
    return ThemeData(
      colorScheme: ColorScheme(
        primary: primary!,
        secondary: secondary!,
        error: error!,
        surface: surface!,
        background: background!,
        brightness: brightness!,
        onPrimary: onPrimary!,
        onSecondary: onSecondary!,
        onBackground: onBackground!,
        onError: onError!,
        onSurface: onSurface!,
      ),
    );
  }

  static ThemeData nature() {
    return ThemeData(colorScheme: _bellamyNature);
  }

  static ThemeData pastel() {
    return ThemeData(colorScheme: _bellamyPastel);
  }
}

ColorScheme _bellamyNature = ColorScheme(
  primary: const Color(0xFF606c38),
  secondary: const Color(0xFF283618),
  error: const Color(0xFFbc6c25),
  surface: const Color(0xFFdda15e),
  background: const Color(0xFFfefae0),
  brightness: Brightness.light,
  onPrimary: colors.white,
  onSecondary: colors.white,
  onBackground: colors.black3,
  onError: colors.white,
  onSurface: colors.black1,
);

ColorScheme _bellamyPastel = ColorScheme(
  primary: const Color(0xFF006d77),
  secondary: const Color(0xFF83c5be),
  error: const Color(0xFFe29578),
  surface: const Color(0xFFffddd2),
  background: const Color(0xFFedf6f9),
  brightness: Brightness.light,
  onPrimary: colors.white,
  onSecondary: colors.black2,
  onBackground: colors.black3,
  onError: colors.black1,
  onSurface: colors.black1,
);
