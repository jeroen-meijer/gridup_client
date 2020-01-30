import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static const fontFamilyProductSans = 'Product Sans';
  static const fontFamilyFiraCode = 'Fira Code';
  static const fontFamilyDefault = fontFamilyProductSans;

  static const fontFamilyIcons = 'icomoon';

  static const fontWeightExtraLight = FontWeight.w200;
  static const fontWeightLight = FontWeight.w300;
  static const fontWeightNormal = FontWeight.w400;
  static const fontWeightMedium = FontWeight.w500;
  static const fontWeightSemiBold = FontWeight.w600;
  static const fontWeightBold = FontWeight.w700;

  static const iconChessPiece = IconData(0xe900, fontFamily: fontFamilyIcons);
  static const iconLogo = iconChessPiece;

  static const textStyleHeader = TextStyle(
    fontFamily: fontFamilyDefault,
    fontWeight: fontWeightNormal,
  );

  static const colorNearlyWhite = Color(0xFFF5F5F5);

  static const colorPrimary = Colors.black;
  static const colorAccent = Colors.white;

  static const colorAuth = Colors.white;
  static const colorBoards = Colors.black;
  static const colorStore = Color(0xff594ccf);

  static const colorBackground = Color(0xffefefef);

  static ThemeData theme() {
    return ThemeData(
      platform: TargetPlatform.iOS,
      brightness: Brightness.light,
      fontFamily: fontFamilyDefault,
      scaffoldBackgroundColor: colorBackground,
      primarySwatch: Colors.grey,
      primaryColor: colorPrimary,
      accentColor: Colors.white,
      primaryIconTheme: const CupertinoIconThemeData(
        color: colorAccent,
      ),
      accentIconTheme: const CupertinoIconThemeData(
        color: colorPrimary,
      ),
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: colorPrimary,
        primaryContrastingColor: colorAccent,
      ),
    );
  }
}
