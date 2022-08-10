import 'package:flutter/material.dart';
import 'package:swim/presentation/theme/base/theme_typo.abs.dart';
import 'package:swim/presentation/theme/style/typo.dart';

class SwimTypo extends ThemeTypoAbs {
  @override
  TextStyle get h1 => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 64,
        height: 1.3,
        letterSpacing: -0.04,
      );

  @override
  TextStyle get h2 => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 40,
        height: 1.3,
        letterSpacing: -0.04,
      );

  @override
  TextStyle get h3 => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 30,
        height: 1.3,
        letterSpacing: -0.04,
      );

  @override
  TextStyle get h4 => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        height: 1.3,
        letterSpacing: -0.04,
      );

  @override
  TextStyle get bigPrice => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        height: 1.3,
        letterSpacing: 0,
      );

  @override
  TextStyle get price => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 16,
        height: 1.375,
        letterSpacing: 0,
      );

  @override
  TextStyle get bodyLarge => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        height: 1.5,
        letterSpacing: -0.02,
      );

  @override
  TextStyle get bodyRegular => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.375,
        letterSpacing: -0.02,
      );

  @override
  TextStyle get bodyBold => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 16,
        height: 1.375,
        letterSpacing: -0.02,
      );

  @override
  TextStyle get small => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.02,
      );

  @override
  TextStyle get smallBold => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w700,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.02,
      );

  @override
  TextStyle get verySmall => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.5,
        letterSpacing: -0.02,
      );

  @override
  TextStyle get tiny => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w500,
        fontSize: 10,
        height: 1.5,
        letterSpacing: 0,
      );

  @override
  TextStyle get buttonText => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.5,
        letterSpacing: -0.02,
      );

  @override
  TextStyle get smallUnderline => TextStyle(
        fontFamily: Typo.spoqaHanSansNeo.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.02,
        decoration: TextDecoration.underline,
      );

  @override
  TextStyle get profile => TextStyle(
        fontFamily: Typo.newYork.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.02,
      );

  @override
  TextStyle get quote => TextStyle(
        fontFamily: Typo.newYork.fontFamily,
        leadingDistribution: TextLeadingDistribution.even,
        fontWeight: FontWeight.w600,
        fontSize: 26,
        height: 1.231,
        letterSpacing: -0.02,
      );
}
