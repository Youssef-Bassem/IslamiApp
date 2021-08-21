import 'package:flutter/material.dart';

class MyThemeData {
  static const lightColor = const Color(0xFFb7935f);
  static const darkColor = const Color(0xFF083668);

  static final lightTheme = ThemeData(
    primaryColor: Colors.white,
    primaryColorBrightness: Brightness.light,
    brightness: Brightness.light,
    primaryColorDark: Colors.black,
    canvasColor: Colors.white,
    accentColor: Colors.black,
    scaffoldBackgroundColor: lightColor,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(lightColor),
        textStyle: MaterialStateProperty.all(
          TextStyle(color: Colors.black),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(lightColor),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: Colors.black,
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: Colors.black,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black,
    indicatorColor: Colors.white,
    canvasColor: Colors.black,
    accentColor: Colors.white,
    scaffoldBackgroundColor: darkColor,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(darkColor),
        textStyle: MaterialStateProperty.all(
          TextStyle(color: Colors.white),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.amber),
      ),
    ),
  );
}
