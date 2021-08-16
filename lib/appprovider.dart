import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {

  String currentLanguage="en";

  void changeLanguage( String Language )
  {
    if( currentLanguage == Language )
      return;
    currentLanguage=Language;
    notifyListeners();
  }

}