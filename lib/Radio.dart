import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'appprovider.dart';

class radio extends StatefulWidget {

  @override
  _radioState createState() => _radioState();
}

class _radioState extends State<radio> {

  static const lightcolor = const Color(0xFFb7935f);
  static const darkIconColor = const Color(0xFFF4C12F);
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
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 15,),
              Container(
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 90,),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image(
                  image: AssetImage('assets/radio_logo.png'),
                  width: 370,
                ),
              ),
              SizedBox(height: 40,),
              Text(
                AppLocalizations.of(context)!.radioCaption,
                style: TextStyle(fontSize: 22.0),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Image.asset('assets/play_forward.png',height: 40,width: 40,
                        color: ( provider.isDarkModeEnabled() ) ?
                               darkIconColor : lightcolor,
                      ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/play.png',height: 40,width: 40,
                      color: ( provider.isDarkModeEnabled() ) ?
                      darkIconColor : lightcolor,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/play_backward.png',height: 40,width: 40,
                      color: ( provider.isDarkModeEnabled() ) ?
                      darkIconColor : lightcolor,
                    ),
                  ),
                ],
              )

            ],

          ),
        ),
      ),
    );
  }
}