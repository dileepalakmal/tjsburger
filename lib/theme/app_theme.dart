import 'package:flutter/material.dart';

class AppThemeData {
  // Accent Color
  static const accentPrimary = Color.fromRGBO(251, 192, 45, 1.0);
  static const accentSecondary = Color.fromRGBO(33, 33, 41, 1.0);
  static const accentTertiary = Color.fromRGBO(250, 191, 45, 1.0);
  static const accentQuaternary = Color.fromRGBO(237, 253, 255, 1.0);
  static const hoverEvent = Color.fromRGBO(27, 218, 236, 1.0);
  static const clickEvent = Color.fromRGBO(3, 193, 211, 1.0);

  // Background
  static const backgroundLight = Color.fromRGBO(255, 255, 255, 1.0);
  static const backgroundDarken = Color.fromRGBO(248, 248, 248, 1.0);
  static const backgroundDisabled = Color.fromRGBO(239, 239, 239, 1.0);

  // Greyscale
  static const textPrimary = Color.fromRGBO(24, 24, 24, 1.0);
  static const textSecondary = Color.fromRGBO(92, 92, 92, 1.0);
  static const textTertiary = Color.fromRGBO(116, 116, 116, 1.0);
  static const textQuaternary = Color.fromRGBO(255, 255, 255, 1.0);
  static const textDisabled = Color.fromRGBO(138, 138, 138, 1.0);
  static const icons = Color.fromRGBO(124, 123, 123, 1.0);
  static const stroke = Color.fromRGBO(215, 215, 215, 1.0);
  static const dividers = Color.fromRGBO(103, 103, 103, 1.0);

  // Other
  static const white = Color.fromRGBO(255, 255, 255, 1.0);
  static Color appColorDarkWithOpacity = Colors.black.withOpacity(0.6);
  static const double appCornerRadius = 20.0;

  // Paddings
  static double pagePadding = 20.0;

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(),
    primaryColor: accentPrimary,
    backgroundColor: backgroundDarken,
    scaffoldBackgroundColor: backgroundLight,
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
        color: accentSecondary,
        elevation: 0.0,
        iconTheme: IconThemeData(color: icons)),
    iconTheme: const IconThemeData(color: icons),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: accentQuaternary,
      selectionColor: textSecondary,
      selectionHandleColor: textPrimary,
    ),
    textTheme: const TextTheme(
      /// NAME         SIZE  WEIGHT  SPACING
      /// headline1    96.0  light   -1.5
      /// headline2    60.0  light   -0.5
      /// headline3    48.0  regular  0.0
      /// headline4    34.0  regular  0.25
      /// headline5    24.0  regular  0.0
      /// headline6    20.0  medium   0.15
      /// subtitle1    16.0  regular  0.15
      /// subtitle2    14.0  medium   0.1
      /// body1        16.0  regular  0.5   (bodyText1)
      /// body2        14.0  regular  0.25  (bodyText2)
      /// button       14.0  medium   1.25
      /// caption      12.0  regular  0.4
      /// overline     10.0  regular  1.5
      headline4: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w700, color: textPrimary),
      headline5: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700, color: textPrimary),
      headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: textPrimary),
      subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: textPrimary),
      button: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: textPrimary),
      bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: textPrimary),
      bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: textPrimary),
      caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: textPrimary),
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(textPrimary),
    )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(accentPrimary),
          foregroundColor: MaterialStateProperty.all<Color>(textQuaternary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              //side: BorderSide(color: Colors.red)
            ),
          )),
    ),
  );
}
