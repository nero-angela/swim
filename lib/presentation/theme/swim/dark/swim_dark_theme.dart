import 'dart:ui';

import 'package:swim/presentation/theme/base/theme.abs.dart';
import 'package:swim/presentation/theme/base/theme_palette.abs.dart';
import 'package:swim/presentation/theme/base/theme_typo.abs.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/presentation/theme/swim/dark/swim_dark_palette.dart';
import 'package:swim/presentation/theme/swim/swim_typo.dart';

class SwimDarkTheme extends ThemeAbs {
  @override
  String get name => S.current.themeDark;

  @override
  ThemePaletteAbs get palette => SwimDarkPalette();

  @override
  Brightness get brightness => Brightness.dark;

  @override
  ThemeTypoAbs get typo => SwimTypo();
}
