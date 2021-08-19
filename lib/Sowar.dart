import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appprovider.dart';
import 'suracontent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'SowarFile.dart';

class Quran extends StatelessWidget {
  late AppProvider provider;
  final SuwarFile sorafile = SuwarFile();
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppProvider>(context);
    String path = 'Quran/';

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
                  image: AssetImage('assets/sowarLogo.png'),
                  width: 150,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.soraName,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: sorafile.Sowar.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: MaterialButton(
                        child: Text(
                          sorafile.Sowar[index],
                          style: TextStyle(
                            fontSize: 20.0,
                            color: (provider.isDarkModeEnabled())
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Suracontent(
                                  suraname: sorafile.Sowar[index],
                                  path: path + '1.txt'),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
