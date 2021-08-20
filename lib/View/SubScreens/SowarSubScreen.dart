import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:task4_training/Controller/AppProvider.dart';

class Suracontent extends StatefulWidget {
  final String suraname;
  final String path;
  final int soranum;
  const Suracontent(
      {required this.suraname, required this.path, required this.soranum});

  @override
  SuracontentState createState() => SuracontentState();
}

class SuracontentState extends State<Suracontent> {
  static const lightcolor = const Color(0xFFb7935f);
  static const darkIconColor = const Color(0xFFF4C12F);
  late AppProvider provider;
  String data = '';
  fetchFileData() async {
    String resp;
    int num = widget.soranum;
    resp = await rootBundle.loadString(widget.path + '$num' + '.txt');
    List<String> items = resp.split('\n');
    resp = "";
    for (int i = 0; i < items.length; i++) {
      print(items[i]);
      print(items[i].length);
      resp += items[i];
      resp += "(";
      resp += (i + 1).toString();
      resp += ")";
    }
    setState(() {
      data = resp;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          AppLocalizations.of(context)!.sora +
                              ' ' +
                              widget.suraname,
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 3,
                        color: provider.isDarkModeEnabled()
                            ? darkIconColor
                            : lightcolor,
                        margin: EdgeInsets.all(8),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Text(
                      data,
                      style: TextStyle(
                        //color: Colors.black,
                        fontFamily: 'Lateef',
                        fontSize: 23,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
