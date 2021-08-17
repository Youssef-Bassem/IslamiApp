import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Ahadees.dart';
import 'package:task4_training/SideMenu.dart';
import 'package:task4_training/Sowar.dart';
import 'package:task4_training/Tasbeeh.dart';
import 'package:task4_training/Radio.dart';
import 'package:task4_training/l10n/l10n.dart';
import 'ThemeData.dart';
import 'suracontent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'appprovider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //late AppConfigProvider provider;
  int curr_index = 4;
  static const lightcolor = const Color(0xFFb7935f);
  static const darkcolor = const Color(0xFF083668);
  static const darkIconColor = const Color(0xFFF4C12F);

  final tabs = [
    SideMenu(),
    radio(),
    Tasbeeh(),
    ahades(),
    Quran(),
  ];

  @override
  Widget build(BuildContext context) {

    //provider = Provider.of<AppConfigProvider>(context);

    return ChangeNotifierProvider(
      create: (buildContext){
        return AppProvider();
      },
      builder: (buildContext, widget){
        final provider = Provider.of<AppProvider>(buildContext);
        return MaterialApp(
          themeMode: provider.themeMode,
          theme: Theme_Data.Light_Theme,
          darkTheme: Theme_Data.Dark_Theme,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            drawer: SideMenu(),
            body: tabs[curr_index],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: curr_index,
              selectedFontSize: 20,
              backgroundColor: Colors.white,
              items:
              [

                BottomNavigationBarItem(
                  title: Text('Settings'),
                  icon:Icon(Icons.settings,size: 40,color: Colors.white,),
                  backgroundColor: (provider.isDarkModeEnabled()) ?
                  darkcolor : lightcolor,
                ),

                BottomNavigationBarItem(
                  title: Text('radio'),
                  icon: Image.asset('assets/radio.png',height: 40,width: 40),
                  backgroundColor: (provider.isDarkModeEnabled()) ?
                  darkcolor : lightcolor,
                ),

                BottomNavigationBarItem(
                  title: Text('tasbeh'),
                  icon: Image.asset('assets/sebha.png',height: 40,width: 40,),
                  backgroundColor: (provider.isDarkModeEnabled()) ?
                  darkcolor : lightcolor,
                ),

                BottomNavigationBarItem(
                  title: Text('ahades'),
                  icon: Image.asset('assets/ahades.png',height: 40,width: 40,),
                  backgroundColor: (provider.isDarkModeEnabled()) ?
                  darkcolor : lightcolor,
                ),

                BottomNavigationBarItem(
                  title: Text('quraan'),
                  icon: Image.asset('assets/quraan.png',height: 40,width: 40,),
                  backgroundColor: (provider.isDarkModeEnabled()) ?
                  darkcolor : lightcolor,
                )
              ],
              onTap: (index)
              {
                setState(() {
                  curr_index = index;
                });
              },
            ),
          ),
          locale: Locale.fromSubtags(languageCode: provider.currentLanguage),
          supportedLocales: L10n.all,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
        );
      },
    );

  }
}