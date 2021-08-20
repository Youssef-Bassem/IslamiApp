import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Controller/AppProvider.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  late AppProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppProvider>(context);
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(provider.isDarkModeEnabled()
                  ? "assets/bg.png"
                  : "assets/ahades1.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.settings,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    changeTheme();
                  },
                  child: myRow(AppLocalizations.of(context)!.themes,
                      Icons.add_to_photos_outlined),
                ),
                InkWell(
                  onTap: () {
                    changeLanguage();
                  },
                  child: myRow(
                      AppLocalizations.of(context)!.language, Icons.language),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row myRow(String itemName, IconData myIcon) {
    return Row(
      children: [
        Icon(myIcon),
        SizedBox(
          width: 20,
        ),
        myContainer(itemName),
      ],
    );
  }

  Container myContainer(String itemName) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        itemName,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
      ),
    );
  }

  void changeTheme() {
    showModalBottomSheet(
        context: context,
        builder: (builderContext) {
          return Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    if (!provider.isDarkModeEnabled()) {
                      provider.changeTheme();
                      Navigator.pop(context);
                    }
                  },
                  child: Center(child: myContainer("Dark theme")),
                ),
                InkWell(
                  onTap: () {
                    if (provider.isDarkModeEnabled()) {
                      provider.changeTheme();
                      Navigator.pop(context);
                    }
                  },
                  child: Center(child: myContainer("Light theme")),
                ),
              ],
            ),
          );
        });
  }

  void changeLanguage() {
    showModalBottomSheet(
        context: context,
        builder: (builderContext) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () {
                    provider.changeLanguage('en');
                    Navigator.pop(context);
                  },
                  child: myContainer("English"),
                ),
                InkWell(
                    onTap: () {
                      provider.changeLanguage('ar');
                      Navigator.pop(context);
                    },
                    child: myContainer("العربية")),
              ],
            ),
          );
        });
  }
}
