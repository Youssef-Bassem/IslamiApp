import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Controller/AppProvider.dart';
import 'package:task4_training/Data/SowarArabicData.dart';
import 'package:task4_training/Data/SowarEnglishData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:task4_training/View/SubScreens/SowarSubScreen.dart';

class Quran extends StatelessWidget {
  static const lightcolor = const Color(0xFFb7935f);
  static const darkIconColor = const Color(0xFFF4C12F);

  late AppProvider provider;

  final SuwarFileArabic sorafileAr = SuwarFileArabic();
  final SuwarFileEnglish sorafileEn = SuwarFileEnglish();

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppProvider>(context);
    String path = 'Quran/';

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(provider.isDarkModeEnabled()
                  ? "assets/bg.png"
                  : "assets/ahades1.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image(
                  image: AssetImage('assets/sowarLogo.png'),
                  width: 150,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 3,
                color:
                    provider.isDarkModeEnabled() ? darkIconColor : lightcolor,
                margin: EdgeInsets.all(8),
              ),
              Text(
                AppLocalizations.of(context)!.soraName,
                style: TextStyle(fontSize: 22.0),
              ),
              Container(
                height: 3,
                color:
                    provider.isDarkModeEnabled() ? darkIconColor : lightcolor,
                margin: EdgeInsets.all(8),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: sorafileAr.SowarArabicList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: MaterialButton(
                        child: Text(
                          (provider.currentLanguage == 'ar')
                              ? sorafileAr.SowarArabicList[index]
                              : sorafileEn.SowarEnglishList[index],
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
                              builder: (context) => Suracontent(
                                suraname: (provider.currentLanguage == 'ar')
                                    ? sorafileAr.SowarArabicList[index]
                                    : sorafileEn.SowarEnglishList[index],
                                path: path,
                                soranum: index + 1,
                              ),
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
        ),
      ),
    );
  }
}
