import 'dart:ui';

import 'package:swim/presentation/theme/base/theme_palette.abs.dart';
import 'package:swim/presentation/theme/style/palette.dart';

class SwimLightPalette extends ThemePaletteAbs {
  @override
  Color get accentColor => Palette.red;

  @override
  Color get activeColor => Palette.sky;

  @override
  Color get backgroundColor => Palette.black500;

  @override
  Color get contentColor => Palette.mustard;

  @override
  Color get disabledColor => Palette.grey600;

  @override
  Color get dividerColor => Palette.grey200;

  @override
  Color get inactiveColor => Palette.grey400;

  @override
  Color get hintColor => Palette.grey500;

  @override
  Color get onPrimaryColor => Palette.black900;

  @override
  Color get primaryColor => Palette.white;

  @override
  Color get uniqueColor => Palette.green;

  @override
  Color get superLightColor => Palette.grey100;
}
