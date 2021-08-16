import 'package:flutter/material.dart';
import 'package:task4_training/Ahadees.dart';
import 'package:task4_training/SideMenu.dart';
import 'package:task4_training/Sowar.dart';
import 'package:task4_training/Tasbeeh.dart';
import 'package:task4_training/Radio.dart';
import 'suracontent.dart';

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
              title: Text('Settings'),
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

    );

  }
}