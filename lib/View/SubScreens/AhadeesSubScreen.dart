import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';
import 'package:task4_training/Controller/AppProvider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethContent extends StatefulWidget {
  final String hadethname;
  final String path;
  final int hadethnum;
  const AhadethContent(
      {required this.hadethname, required this.path, required this.hadethnum});

  @override
  AhadethContentState createState() => AhadethContentState();
}

class AhadethContentState extends State<AhadethContent> {
  static const lightcolor = const Color(0xFFb7935f);
  static const darkIconColor = const Color(0xFFF4C12F);
  late AppProvider provider;
  String data = '';
  fetchFileData() async {
    int num = widget.hadethnum;
    String resp;
    resp = await rootBundle.loadString(widget.path + '$num' + '.txt');
    List<String> items = resp.split('\n');
    resp = "";
    for (int i = 0; i < items.length; i++) {
      print(items[i]);
      print(items[i].length);
      resp += items[i];
      resp += "  ";
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
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child: Text(
            AppLocalizations.of(context)!.appTitle,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        iconTheme: IconThemeData(
            color: provider.isDarkModeEnabled() ? Colors.white : Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        //margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.isDarkModeEnabled()
                ? "assets/bg.png"
                : "assets/ahades1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    widget.hadethname,
                    style:
                    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 3,
                  color:
                  provider.isDarkModeEnabled() ? darkIconColor : lightcolor,
                  margin: EdgeInsets.all(8),
                ),
                Expanded(
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
      ),
    );
  }
}
