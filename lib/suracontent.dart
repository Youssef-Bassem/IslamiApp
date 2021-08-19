import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'appprovider.dart';

class Suracontent extends StatefulWidget {
  final String suraname;
  final String path;
  const Suracontent({required this.suraname, required this.path});

  @override
  SuracontentState createState() => SuracontentState();
}

class SuracontentState extends State<Suracontent> {
  late AppProvider provider;
  String data = '';

  fetchFileData() async {
    String resp;
    resp = await rootBundle.loadString(widget.path);
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
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
            color: provider.isDarkModeEnabled() ? Colors.white : Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Container(
          child: Text(
            AppLocalizations.of(context)!.appTitle,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Center(
                    child: Text(
                      'سورة ' + widget.suraname,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Text(
                      data,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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
