import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Controller/AppProvider.dart';

class RadioScreen extends StatefulWidget {
  @override
  _RadioState createState() => _RadioState();
}

class _RadioState extends State<RadioScreen> {
  static const lightColor = const Color(0xFFb7935f);
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
              SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image(
                  image: AssetImage('assets/radio_logo.png'),
                  width: 370,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                AppLocalizations.of(context)!.radioCaption,
                style: TextStyle(fontSize: 22.0),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myIconButton('assets/play_backward.png'),
                  myIconButton('assets/play.png'),
                  myIconButton('assets/play_forward.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconButton myIconButton(String imagePath) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(
        imagePath,
        height: 40,
        width: 40,
        color: (provider.isDarkModeEnabled()) ? darkIconColor : lightColor,
      ),
    );
  }
}
