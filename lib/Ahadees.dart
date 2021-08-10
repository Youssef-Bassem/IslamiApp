import 'package:flutter/material.dart';

class ahades extends StatelessWidget {
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
                ]
            )

          ],
        )
    );
  }
}