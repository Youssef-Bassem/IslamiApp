import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'appprovider.dart';

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
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),

      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: (){
                changeTheme();
              },
              child: myContainer("Theme"),
            ),
            InkWell(
              onTap: (){
                changeLanguage();
              },
              child:myContainer("Language"),
            ),
          ],
        ),
      ),
    );
  }
  Container myContainer(String itemName){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child:Text(itemName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
  void changeTheme(){
    showModalBottomSheet(context: context, builder: (builderContext){
      return Container(
        child:Column(
          children: [
            InkWell(
              onTap: (){
                if(!provider.isDarkModeEnabled())
                {
                  provider.changeTheme();
                }
              },
              child: myContainer("Dark theme"),
            ),
            InkWell(
              onTap: (){
                if(provider.isDarkModeEnabled())
                {
                  provider.changeTheme();
                }
              },
              child:myContainer("Light theme"),
            ),
          ],
        ),
      );
    });
  }
  void changeLanguage(){
    showModalBottomSheet(context: context, builder: (builderContext){
      return Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
                onTap: (){
                  provider.changeLanguage('en');
                },
                child: myContainer("English")
            ),
            InkWell(
                onTap: (){
                  provider.changeLanguage('ar');
                },
                child: myContainer("العربية")
            ),
          ],
        ),
      );
    });
  }
}