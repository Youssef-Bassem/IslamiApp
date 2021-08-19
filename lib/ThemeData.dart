import 'package:flutter/material.dart';

class Theme_Data
{
  static const lightcolor = const Color(0xFFb7935f);
  static const darkcolor = const Color(0xFF083668);

  static final Light_Theme = ThemeData(
      primaryColor: Colors.white,
      primaryColorBrightness: Brightness.light,
      brightness: Brightness.light,
      primaryColorDark: Colors.black,
      canvasColor: Colors.white,
      accentColor: Colors.black,
      scaffoldBackgroundColor: lightcolor,
      textSelectionColor: Colors.white,

      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(lightcolor),
            textStyle: MaterialStateProperty.all(
                TextStyle(
                    color: Colors.black
                )
            ),
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(lightcolor),
          )
      ),

  );

  static final Dark_Theme = ThemeData(
      primaryColor: Colors.black,
      primaryColorBrightness: Brightness.dark,
      primaryColorLight: Colors.black,
      brightness: Brightness.dark,
      primaryColorDark: Colors.black,
      indicatorColor: Colors.white,
      canvasColor: Colors.black,
      accentColor: Colors.white,
      scaffoldBackgroundColor: darkcolor,
      textSelectionColor: Colors.black,

      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(darkcolor),
            textStyle: MaterialStateProperty.all(
                TextStyle(
                  color: Colors.white
                )
            ),
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
          )
      ),

  );

}