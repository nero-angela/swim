import 'package:flutter/material.dart';
import 'package:swim/presentation/theme/base/theme.abs.dart';
import 'package:swim/presentation/theme/base/theme_palette.abs.dart';
import 'package:swim/presentation/theme/base/theme_typo.abs.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/presentation/theme/swim/light/swim_light_palette.dart';
import 'package:swim/presentation/theme/swim/swim_typo.dart';

class SwimLightTheme extends ThemeAbs {
  @override
  String get name => S.current.themeLight;

  @override
  ThemePaletteAbs get palette => SwimLightPalette();

  @override
  Brightness get brightness => Brightness.light;

  @override
  ThemeTypoAbs get typo => SwimTypo();
}
