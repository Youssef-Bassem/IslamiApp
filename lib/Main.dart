import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Ahadees.dart';
import 'package:task4_training/SideMenu.dart';
import 'package:task4_training/Sowar.dart';
import 'package:task4_training/Tasbeeh.dart';
import 'package:task4_training/Radio.dart';
import 'package:task4_training/UserPreferences.dart';
import 'package:task4_training/l10n/l10n.dart';
import 'ThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Appprovider.dart';
import 'UserPreferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppProvider provider;

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
    return ChangeNotifierProvider(
      create: (buildContext) {
        return AppProvider();
      },
      builder: (buildContext, widget) {
        provider = Provider.of<AppProvider>(buildContext);
        provider.themeMode = UserPreferences.getThemePreference();
        provider.currentLanguage = UserPreferences.getLanguage();
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
              selectedItemColor:
                  provider.isDarkModeEnabled() ? darkIconColor : Colors.black,
              items: [
                BottomNavigationBarItem(
                  label: provider.currentLanguage=='en'? 'Settings' : 'الاعدادات',
                  icon: Icon(
                    Icons.settings,
                    size: 40,
                    color: Colors.white,
                  ),
                  backgroundColor:
                      (provider.isDarkModeEnabled()) ? darkcolor : lightcolor,
                  activeIcon: new Icon(Icons.settings,
                      size: 40,
                      color: provider.isDarkModeEnabled()
                          ? darkIconColor
                          : Colors.black),
                ),
                myNavigationBarItem(provider.currentLanguage=='en'? 'Radio' : 'راديو', 'assets/radio.png'),
                myNavigationBarItem(provider.currentLanguage=='en'? 'Tasbeh' : 'تسبيح', 'assets/sebha.png'),
                myNavigationBarItem(provider.currentLanguage=='en'? 'Ahades' : 'أحاديث', 'assets/ahades.png'),
                myNavigationBarItem(provider.currentLanguage=='en'? 'Quraan' : 'قرآن', 'assets/quraan.png'),
              ],
              onTap: (index) {
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

  BottomNavigationBarItem myNavigationBarItem(String iconLabel, String myIcon) {
    return BottomNavigationBarItem(
      label: iconLabel,
      icon: Image.asset(
        myIcon,
        height: 40,
        width: 40,
      ),
      backgroundColor: (provider.isDarkModeEnabled()) ? darkcolor : lightcolor,
      activeIcon: new Image.asset(myIcon,
          height: 40,
          width: 40,
          color: provider.isDarkModeEnabled() ? darkIconColor : Colors.black),
    );
  }
}
