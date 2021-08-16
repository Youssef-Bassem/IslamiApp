import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
                onTap: (){
                },
                child:myContainer("Dark theme")
            ),
            InkWell(
                onTap: (){
                },
                child: myContainer("Light theme")
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
                },
                child: myContainer("English")
            ),
            InkWell(
                onTap: (){
                },
                child: myContainer("العربية")
            ),
          ],
        ),
      );
    });
  }
}
