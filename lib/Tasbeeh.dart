//Youssef Bassem

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/appprovider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const myColor = const Color(0xFFb7935f);
int tasbeehCounter = 0;
List<String> tasbeehat = ["سبحان الله","الحمد لله","لا اله الا الله","الله اکبر","لاحولا ولاقوة الابالله"];
int index = 0;
double angle = 0;

class Tasbeeh extends StatefulWidget {
  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {

  late AppProvider provider;
  static const lightcolor = const Color(0xFFb7935f);
  static const darkcolor = const Color(0xFF083668);

  @override
  Widget build(BuildContext context) {

    provider = Provider.of<AppProvider>(context);

    return Scaffold(
      body: SafeArea(
        child:Container(
          //margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  provider.isDarkModeEnabled()?
                  "assets/bg.png" : "assets/ahades1.png"
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  AppLocalizations.of(context)!.appTitle,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 50,),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(50,0,0,0),
                      alignment: AlignmentDirectional.topCenter,
                      child: Image.asset(provider.isDarkModeEnabled()?
                      "assets/head of seb7a.png" : "assets/head.png"
                      ),
                    ),
                    Container(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(70, 65, 0, 0),
                        onPressed: (){increaseTasbeehCounter();},
                        child: Transform.rotate(
                          angle: angle,
                          child: Image.asset(provider.isDarkModeEnabled()?
                          "assets/body of seb7a.png" : "assets/body.png"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  AppLocalizations.of(context)!.tasbeeh,
                  style: TextStyle(
                      fontSize: 25
                  ),
                ),
                TextButton(
                  onPressed: () { },
                  child:Text(
                    tasbeehCounter.toString(),
                    style: TextStyle(
                      color: (provider.isDarkModeEnabled()) ?
                      Colors.white : Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    //backgroundColor: MaterialStateProperty.all(myColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    tasbeehat[index],
                    style: TextStyle(
                      color: (provider.isDarkModeEnabled()) ?
                      Colors.black : Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    //backgroundColor: MaterialStateProperty.all(myColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  onPressed:(){
                    setState(() {
                      increaseTasbeehCounter();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  rotate() async {
    await Future.delayed(Duration(milliseconds: 5), () {
      setState(() {
        angle += 0.1;
      });
    });
  }
  void increaseTasbeehCounter(){
    rotate();
    if(tasbeehCounter < 33){
      tasbeehCounter++;
    }
    else {
      tasbeehCounter = 0;
      indexCounter();
    }
  }
  void indexCounter(){
    if(index < 5)
      index++;
    if(index == 5)
      index = 0;
  }
}