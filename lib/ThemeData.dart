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
      // next line is important!
      //appBarTheme: AppBarTheme(brightness: Brightness.light)),
      appBarTheme: AppBarTheme(
          backgroundColor: lightcolor,
          brightness: Brightness.light
      ),

      scaffoldBackgroundColor: lightcolor,
      textSelectionColor: Colors.white,
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(lightcolor),
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(lightcolor),
          )
      ),
      primaryTextTheme: TextTheme(
          button: TextStyle(
              color: Colors.black
          )
      )
  );

  static final Dark_Theme = ThemeData(
      primaryColor: Colors.black,
      primaryColorBrightness: Brightness.dark,
      primaryColorLight: Colors.black,
      brightness: Brightness.dark,
      primaryColorDark: Colors.black,
      indicatorColor: Colors.white,
      canvasColor: Colors.black,
      // next line is important!
      //appBarTheme: AppBarTheme(brightness: Brightness.dark)),
      appBarTheme: AppBarTheme(
          backgroundColor: darkcolor,
          brightness: Brightness.dark
      ),

      scaffoldBackgroundColor: darkcolor,
      textSelectionColor: Colors.black,
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(darkcolor),
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
          )
      ),
      primaryTextTheme: TextTheme(
          button: TextStyle(
              color: Colors.white
          )
      )
  );

}