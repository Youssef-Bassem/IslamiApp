import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'ahades2.dart';


class ahades extends StatefulWidget {
  @override
  _ahadesState createState() => _ahadesState();
}
String path='assets/';
class _ahadesState extends State<ahades> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ahades1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 22, 20, 0),
                    child: Center(child:Text(
                      'إسلامي',
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold
                      ),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Image(
                      image: AssetImage('assets/ahades_3.png'),
                      width: 150,
                    ),
                  ),
                  Text('الأحاديث' , style: TextStyle(fontSize: 32.0, color: Colors.black, fontWeight: FontWeight.w200,)),
                  Flexible(child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      MakeButton('الحديث الأول', '1.txt',context),
                      MakeButton('الحديث الثاني', '2.txt', context),
                      MakeButton('الحديث الثالث', '3.txt',context),
                      MakeButton(' الحديث الرابع', '4.txt',context),
                      MakeButton('الحديث الخامس', '5.txt',context),
                      MakeButton('الحديث السادس', '6.txt',context),
                      MakeButton('الحديث السابع', '7.txt',context),
                      MakeButton('الحديث الثامن', '8.txt',context),
                      MakeButton('الحديث التاسع', '9.txt',context),
                      MakeButton('الحديث العاشر', '10.txt',context),
                    ],
                  ),),

                ]
            )

          ],
        )
    );
  }
}

TextButton MakeButton(String name, String filename, BuildContext context){
  return TextButton(
    child: Text(name, style: TextStyle(
      fontSize: 30.0,
      color: Colors.black,
      fontWeight: FontWeight.w900,)
    ),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : name , path :path+filename)));
    },
  );
}