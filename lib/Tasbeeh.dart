//Youssef Bassem

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const myColor = const Color(0xFFb7935f);
int tasbeehCounter = 0;
List<String> tasbeehat = ["سبحان الله","الحمد لله","لا اله الا الله","الله اکبر","لاحولا ولاقوة الابالله"];
int index = 0;

class Tasbeeh extends StatefulWidget {
  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh>
  with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2),
      vsync: this,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg3.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'إسلامي',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:5),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: <Widget>[
                      Image.asset("assets/head.png"),
                      Image.asset("assets/body.png"),
                    ],
                  ),
                ),
                Text(
                  'عدد التسبيحات',
                  style: TextStyle(
                      fontSize: 25
                  ),
                ),
                TextButton(
                  onPressed: () { },
                  child:Text(
                    tasbeehCounter.toString(),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(myColor),
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
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(myColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  onPressed:(){
                    setState(() {
                      increaseCounter();
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
}

void increaseCounter(){
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