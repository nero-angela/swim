import 'package:flutter/material.dart';
import 'package:swim/presentation/theme/base/theme_palette.abs.dart';
import 'package:swim/presentation/theme/base/theme_typo.abs.dart';

abstract class ThemeAbs {
  /// Theme name
  String get name;

  /// Typo
  ThemeTypoAbs get typo;

  /// Palette
  ThemePaletteAbs get palette;

  /// Brightness
  Brightness get brightness;
}
