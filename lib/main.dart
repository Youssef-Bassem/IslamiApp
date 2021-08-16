import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Ahadees.dart';
import 'package:task4_training/SideMenu.dart';
import 'package:task4_training/Sowar.dart';
import 'package:task4_training/Tasbeeh.dart';
import 'package:task4_training/Radio.dart';
import 'package:task4_training/l10n/l10n.dart';
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

  int curr_index = 3;
  static const color = const Color(0xFFb7935f);

  final tabs = [
    SideMenu(),
    radio(),
    Tasbeeh(),
    ahades(),
    Quran(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (BuildContext)=>AppProvider(),
      builder: ( BuildContext , widget   ){
      final provider = Provider.of<AppProvider>(BuildContext );
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            drawer: SideMenu(),
            body: tabs[curr_index],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: curr_index,
              selectedFontSize: 20,
              items:
              [
                BottomNavigationBarItem(
                  backgroundColor: color,
                  title: Text("setting"),
                  icon: Icon(Icons.settings,size: 40),
                ),

                BottomNavigationBarItem(
                  backgroundColor: color,
                  title: Text('radio'),
                  icon: Image.asset('assets/radio.png',height: 40,width: 40,),
                ),

                BottomNavigationBarItem(
                  backgroundColor: color,
                  title: Text('tasbeh'),
                  icon: Image.asset('assets/sebha.png',height: 40,width: 40,),
                ),

                BottomNavigationBarItem(
                  backgroundColor: color,
                  title: Text('ahades'),
                  icon: Image.asset('assets/ahades.png',height: 40,width: 40,),
                ),

                BottomNavigationBarItem(
                  backgroundColor: color,
                  title: Text('quraan'),
                  icon: Image.asset('assets/quraan.png',height: 40,width: 40,),
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