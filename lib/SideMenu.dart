import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
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

              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                child:Text("Language"),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child:Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                child:Text("Theme"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
