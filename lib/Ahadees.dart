import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ahades2.dart';
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
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      provider.isDarkModeEnabled()?
                      "assets/bg.png" : "assets/ahades1.png",
                  ),
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
                      MakeButton('الحديث الحادي عشر', '11.txt',context),
                      MakeButton('الحديث الثاني عشر', '12.txt',context),
                      MakeButton('الحديث الثالث عشر', '13.txt',context),
                      MakeButton('الحديث الرابع عشر', '14.txt',context),
                      MakeButton('الحديث الخامس عشر', '15.txt',context),
                      MakeButton('الحديث السادس عشر', '16.txt',context),
                      MakeButton('الحديث السابع عشر', '17.txt',context),
                      MakeButton('الحديث الثامن عشر', '18.txt',context),
                      MakeButton('الحديث التاسع عشر', '19.txt',context),
                      MakeButton('الحديث العشرون', '20.txt',context),
                      MakeButton('الحديث الحادي والعشرون', '21.txt',context),
                      MakeButton('الحديث الثاني والعشرون', '22.txt',context),
                      MakeButton('الحديث الثالث والعشرون', '23.txt',context),
                      MakeButton('الحديث الرابع والعشرون', '24.txt',context),
                      MakeButton('الحديث الخامس والعشرون', '25.txt',context),
                      MakeButton('الحديث السادس والعشرون', '26.txt',context),
                      MakeButton('الحديث السابع والعشرون', '27.txt',context),
                      MakeButton('الحديث الثامن والعشرون', '28.txt',context),
                      MakeButton('الحديث التاسع والعشرون', '29.txt',context),
                      MakeButton('الحديث الثلا ثــون', '30.txt',context),
                      MakeButton('الحديث الحادي والثلاثون', '31.txt',context),
                      MakeButton('الحديث الثاني والثلاثون', '32.txt',context),
                      MakeButton('الحديث الثالث والثلاثون', '33.txt',context),
                      MakeButton('الحديث الرابع والثلاثون', '34.txt',context),
                      MakeButton('الحديث الخامس والثلاثون', '35.txt',context),
                      MakeButton('الحديث السادس والثلاثون', '36.txt',context),
                      MakeButton('الحديث السابع والثلاثون', '37.txt',context),
                      MakeButton('الحديث الثامن والثلاثون', '38.txt',context),
                      MakeButton('الحديث التاسع والثلاثون', '39.txt',context),
                      MakeButton('الحديث الأربعون', '40.txt',context),
                      MakeButton('الحديث الحادي والأربعون', '41.txt',context),
                      MakeButton('الحديث الثاني والأربعـون', '42.txt',context),
                      MakeButton('الحديث الثالث والأربعون', '43.txt',context),
                      MakeButton('الحديث الرابع والأربعون', '44.txt',context),
                      MakeButton('الحديث الخامس والأربعون', '45.txt',context),
                      MakeButton('الحديث السادس والأربعون', '46.txt',context),
                      MakeButton('الحديث السابع والأربعون', '47.txt',context),
                      MakeButton('الحديث الثامن والأربعون', '48.txt',context),
                      MakeButton('الحديث التاسع والأربعون', '49.txt',context),
                      MakeButton('الحديث الخمسون', '50.txt',context),


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