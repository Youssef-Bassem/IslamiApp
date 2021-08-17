import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {

  String currentLanguage="en";
  ThemeMode themeMode = ThemeMode.light;

  void changeTheme()
  {
    if(themeMode == ThemeMode.light)
    { themeMode = ThemeMode.dark; }
    else if(themeMode == ThemeMode.dark)
    { themeMode = ThemeMode.light; }

    notifyListeners();
  }

  bool isDarkModeEnabled()
  {
    if(themeMode == ThemeMode.dark)
    { return true; }
    else
    { return false; }
  }

  void changeLanguage( String Language )
  {
    if( currentLanguage == Language )
      return;
    currentLanguage=Language;
    notifyListeners();
  }

}