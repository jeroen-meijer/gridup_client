import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static const fontFamilyProductSans = 'Product Sans';
  static const fontFamilyFiraCode = 'Fira Code';
  static const fontFamilyDefault = fontFamilyProductSans;

  static const fontWeightExtraLight = FontWeight.w200;
  static const fontWeightLight = FontWeight.w300;
  static const fontWeightNormal = FontWeight.w400;
  static const fontWeightMedium = FontWeight.w500;
  static const fontWeightSemiBold = FontWeight.w600;
  static const fontWeightBold = FontWeight.w700;

  static const textStyleHeader = TextStyle(
    fontFamily: fontFamilyDefault,
    fontWeight: fontWeightNormal,
  );

  static const colorGame = Color(0xff01b87d);
  static const colorStore = Color(0xff594ccf);

  static const colorBackground = Color(0xffefefef);

  static ThemeData theme() {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: fontFamilyDefault,
      scaffoldBackgroundColor: colorBackground,
    );
  }
}
