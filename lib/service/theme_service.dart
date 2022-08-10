import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:swim/presentation/theme/base/theme.abs.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/presentation/theme/swim/dark/swim_dark_theme.dart';
import 'package:swim/presentation/theme/swim/light/swim_light_theme.dart';

class ThemeService extends ChangeNotifier {
  ThemeService({
    required ThemeAbs theme,
  }) : _theme = theme;

  /// context
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  BuildContext get context => navigatorKey.currentContext!;

  /// Theme
  ThemeAbs _theme;
  ThemeAbs get theme => _theme;
  set theme(ThemeAbs v) {
    if (_theme != v) {
      _theme = v;

      /// StatusBar 색상 변경
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: theme.brightness,
      ));
      notifyListeners();
    }
  }

  bool get isDark => theme.brightness == Brightness.dark;

  void toggleTheme() {
    theme = theme.runtimeType == SwimLightTheme ? SwimDarkTheme() : SwimLightTheme();
  }

  /// Locale
  String get currentLocale => Intl.getCurrentLocale();
  void toggleLocale() {
    S.load(Locale(currentLocale == 'ko' ? 'en' : 'ko'));
    notifyListeners();
  }

  /// Device
  Size get deviceSize => MediaQuery.of(context).size;

  /// Typo
  TextStyle get h1 => theme.typo.h1.copyWith(color: onPrimaryColor);
  TextStyle get h2 => theme.typo.h2.copyWith(color: onPrimaryColor);
  TextStyle get h3 => theme.typo.h3.copyWith(color: onPrimaryColor);
  TextStyle get h4 => theme.typo.h4.copyWith(color: onPrimaryColor);
  TextStyle get bigPrice => theme.typo.bigPrice.copyWith(color: onPrimaryColor);
  TextStyle get price => theme.typo.price.copyWith(color: onPrimaryColor);
  TextStyle get bodyLarge => theme.typo.bodyLarge.copyWith(color: onPrimaryColor);
  TextStyle get bodyRegular => theme.typo.bodyRegular.copyWith(color: onPrimaryColor);
  TextStyle get bodyBold => theme.typo.bodyBold.copyWith(color: onPrimaryColor);
  TextStyle get small => theme.typo.small.copyWith(color: onPrimaryColor);
  TextStyle get smallBold => theme.typo.smallBold.copyWith(color: onPrimaryColor);
  TextStyle get verySmall => theme.typo.verySmall.copyWith(color: onPrimaryColor);
  TextStyle get tiny => theme.typo.tiny.copyWith(color: onPrimaryColor);
  TextStyle get buttonText => theme.typo.buttonText.copyWith(color: onPrimaryColor);
  TextStyle get smallUnderline =>
      theme.typo.smallUnderline.copyWith(color: onPrimaryColor);
  TextStyle get profile => theme.typo.profile.copyWith(color: onPrimaryColor);
  TextStyle get quote => theme.typo.quote.copyWith(color: onPrimaryColor);

  /// Palette
  Color get primaryColor => theme.palette.primaryColor;
  Color get onPrimaryColor => theme.palette.onPrimaryColor;
  Color get accentColor => theme.palette.accentColor;
  Color get uniqueColor => theme.palette.uniqueColor;
  Color get contentColor => theme.palette.contentColor;
  Color get activeColor => theme.palette.activeColor;
  Color get inactiveColor => theme.palette.inactiveColor;
  Color get hintColor => theme.palette.hintColor;
  Color get dividerColor => theme.palette.dividerColor;
  Color get backgroundColor => theme.palette.backgroundColor;
  Color get disabledColor => theme.palette.disabledColor;
  Color get superLightColor => theme.palette.superLightColor;

  /// 테마 override
  ThemeData get themeData {
    return ThemeData(
      colorScheme: ColorScheme(
        primary: onPrimaryColor,
        surface: primaryColor,
        background: primaryColor,
        error: accentColor,
        secondary: accentColor,
        onSecondary: accentColor,
        onError: accentColor,
        onPrimary: onPrimaryColor,
        onSurface: onPrimaryColor,
        onBackground: onPrimaryColor,
        brightness: theme.brightness,
      ),
      splashColor: Colors.transparent, // Remove inkwell effect
      highlightColor: Colors.transparent, // Remove inkwell effect
      hoverColor: Colors.transparent, // Remove hover effect in web
      scaffoldBackgroundColor: primaryColor,

      /// AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
      ),

      /// TextField
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
