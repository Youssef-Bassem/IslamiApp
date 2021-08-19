
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Appprovider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

int tasbeehCounter = 0;
List<String> tasbeehat = [
  "سبحان الله",
  "الحمد لله",
  "لا اله الا الله",
  "الله اکبر",
  "لاحولا ولاقوة الابالله"
];
int index = 0;
double angle = 0;

class Tasbeeh extends StatefulWidget {
  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
  late AppProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppProvider>(context);

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
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        alignment: AlignmentDirectional.topCenter,
                        child: Image.asset(provider.isDarkModeEnabled()
                            ? "assets/head of seb7a.png"
                            : "assets/head.png"),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 65, 0, 0),
                        child: Transform.rotate(
                          angle: angle,
                          child: Image.asset(provider.isDarkModeEnabled()
                              ? "assets/body of seb7a.png"
                              : "assets/body.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  AppLocalizations.of(context)!.tasbeh,
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 15,),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    tasbeehCounter.toString(),
                    style: TextStyle(
                      color: (provider.isDarkModeEnabled())
                          ? Colors.white
                          : Colors.black,
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
                SizedBox(height: 10,),
                ElevatedButton(
                  child: Text(
                    tasbeehat[index],
                    style: TextStyle(
                      color: (provider.isDarkModeEnabled())
                          ? Colors.black
                          : Colors.white,
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
                  onPressed: () {
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
    await Future.delayed(Duration(milliseconds: 25), () {
      setState(() {
        angle += 0.1;
      });
    });
  }

  void increaseTasbeehCounter() {
    rotate();
    if (tasbeehCounter < 32)
      tasbeehCounter++;
    else {
      tasbeehCounter = 0;
      indexCounter();
    }
  }

  void indexCounter() {
    if (index < 5) index++;
    if (index == 5) index = 0;
  }
}
