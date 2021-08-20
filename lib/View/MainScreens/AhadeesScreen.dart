import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Data/AhadeesArabicData.dart';
import 'package:task4_training/Data/AhadeesEnglishData.dart';
import 'package:task4_training/View/SubScreens/AhadeesSubScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:task4_training/Controller/AppProvider.dart';

class ahades extends StatefulWidget {
  @override
  _ahadesState createState() => _ahadesState();
}

String path = 'assets/';

class _ahadesState extends State<ahades> {
  static const lightcolor = const Color(0xFFb7935f);
  static const darkIconColor = const Color(0xFFF4C12F);

  final AhadesFileArabic ahadesfileAr = AhadesFileArabic();
  final AhadesFileEnglish ahadesfileEn = AhadesFileEnglish();

  late AppProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(provider.isDarkModeEnabled()
                      ? "assets/bg.png"
                      : "assets/ahades1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Container(
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.appTitle,
                      style:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Image(
                    image: AssetImage('assets/ahades_3.png'),
                    width: 150,
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 3,
                  color: provider.isDarkModeEnabled()? darkIconColor : lightcolor,
                  margin: EdgeInsets.all(8),
                ),
                Text(
                  AppLocalizations.of(context)!.elahades,
                  style: TextStyle(
                      fontSize: 22.0
                  ),
                ),
                Container(
                  height: 3,
                  color: provider.isDarkModeEnabled()? darkIconColor : lightcolor,
                  margin: EdgeInsets.all(8),
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: ahadesfileAr.AhadesArabicList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: MaterialButton(
                          child: Text(
                            (provider.currentLanguage=='ar')?
                            ahadesfileAr.AhadesArabicList[index]:
                            ahadesfileEn.AhadesEnglishList[index],
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: (provider.isDarkModeEnabled())
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AhadethContent(
                                  hadethname: (provider.currentLanguage=='ar')?
                                  ahadesfileAr.AhadesArabicList[index]:
                                  ahadesfileEn.AhadesEnglishList[index],
                                  path: path , hadethnum: index +1 ,),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

