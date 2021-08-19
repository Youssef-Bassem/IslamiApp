import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'AhadesFile.dart';

//import 'suracontent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'appprovider.dart';

class ahades extends StatefulWidget {
  @override
  _ahadesState createState() => _ahadesState();
}
String path='assets/';
class _ahadesState extends State<ahades> {
  late AppProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppProvider>(context);
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
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
              ),
              Column(
                  children: <Widget>[
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
                        image: AssetImage('assets/ahades_3.png'),
                        width: 150,
                      ),
                    ),
                    Text(AppLocalizations.of(context)!.elahades , style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w800,)),
                    Flexible(child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        MakeButton(AppLocalizations.of(context)!.h1, '1.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h2, '2.txt', context),
                        MakeButton(AppLocalizations.of(context)!.h3, '3.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h4, '4.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h5, '5.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h6, '6.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h7, '7.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h8, '8.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h9, '9.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h10, '10.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h11, '11.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h12, '12.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h13, '13.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h14, '14.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h15, '15.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h16, '16.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h17, '17.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h18, '18.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h19, '19.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h20, '20.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h21, '21.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h22, '22.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h23, '23.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h24, '24.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h25, '25.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h26, '26.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h27, '27.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h28, '28.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h29, '29.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h30, '30.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h31, '31.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h32, '32.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h33, '33.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h34, '34.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h35, '35.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h36, '36.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h37, '37.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h38, '38.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h39, '39.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h40, '40.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h41, '41.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h42, '42.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h43, '43.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h44, '44.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h45, '45.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h46, '46.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h47, '47.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h48, '48.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h49, '49.txt',context),
                        MakeButton(AppLocalizations.of(context)!.h50, '50.txt',context),


                      ],
                    ),),

                  ]
              )

            ],
          ),
        )
    );
  }
}

TextButton MakeButton(String name, String filename, BuildContext context){
  final AppProvider provider = Provider.of<AppProvider>(context);
  return TextButton(
    child: Text(name, style: TextStyle(
      fontSize: 30.0,
      color: (provider.isDarkModeEnabled()) ?
      Colors.white : Colors.black,
      fontWeight: FontWeight.w900,)
    ),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : name , path :path+filename)));
    },
  );
}