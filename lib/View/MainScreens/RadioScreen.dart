import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Controller/AppProvider.dart';
import 'package:http/http.dart' as http;
import 'package:task4_training/Radio_Api/Play.dart';
import 'package:task4_training/Radio_Api/SourceResponse.dart';

class RadioScreen extends StatefulWidget {
  @override
  _RadioState createState() => _RadioState();
}

class _RadioState extends State<RadioScreen> with WidgetsBindingObserver {
  String icon = 'assets/play.png';
  late AppProvider provider;
  late Future<SourceResponse> radioFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppProvider>(context);
    radioFuture = getRadioAudio(provider.currentLanguage);
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
                height: 30,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image(
                  image: AssetImage('assets/radio_logo.png'),
                  width: 370,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppLocalizations.of(context)!.radioCaption,
                style: TextStyle(fontSize: 22.0),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: FutureBuilder<SourceResponse>(
                    future: radioFuture,
                    builder: (context, snapShot) {
                      if (snapShot.hasData) {
                        return Audio(snapShot.data!.radios);
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            color: (provider.isDarkModeEnabled()
                                ? Colors.amberAccent
                                : Colors.black),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<SourceResponse> getRadioAudio(String currentLanguage) async {
    final uri;
    if(currentLanguage == "en")
      uri = Uri.https('api.mp3quran.net', '/radios/radio_english.json');
    else
      uri = Uri.https('api.mp3quran.net', '/radios/radio_arabic.json');

    // https://api.mp3quran.net/radios/radio_english.json
    final response = await http.get(uri);
    print(response.body);
    if (response.statusCode == 200) {
      return SourceResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.body);
    }
  }
}
