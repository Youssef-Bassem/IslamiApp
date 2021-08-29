import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Controller/AppProvider.dart';
import 'package:http/http.dart' as http;
import 'package:task4_training/Radio_Api/SourceResponse.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';

class RadioScreen extends StatefulWidget {
  @override
  _RadioState createState() => _RadioState();
}

class _RadioState extends State<RadioScreen> with WidgetsBindingObserver {
  static const lightColor = const Color(0xFFb7935f);
  static const darkIconColor = const Color(0xFFF4C12F);
  late AppProvider provider;
  String icon = 'assets/play.png';

  final _player = AudioPlayer();
  late Future<SourceResponse> radioFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    radioFuture = getRadioAudio();

    WidgetsBinding.instance?.addObserver(this);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    _init();
  }

  Future<void> _init() async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.speech());
    _player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
          print('A stream error occurred: $e');
        });
    try {
      await _player.setAudioSource(AudioSource.uri(Uri.parse(
          "http://live.mp3quran.net:9992")));
    } catch (e) {
      print("Error loading audio source: $e");
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    _player.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _player.stop();
    }
  }

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
                  //myIconButton(icon),

                  StreamBuilder<PlayerState>(
                    stream: _player.playerStateStream,
                    builder: (context, snapshot) {
                      final playerState = snapshot.data;
                      final processingState = playerState?.processingState;
                      final playing = playerState?.playing;
                      if (processingState == ProcessingState.loading ||
                          processingState == ProcessingState.buffering) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          width: 64.0,
                          height: 64.0,
                          child: CircularProgressIndicator(),
                        );
                      } else if (playing != true) {
                        return IconButton(
                          icon: Icon(Icons.play_arrow),
                          color: (provider.isDarkModeEnabled()) ? darkIconColor : lightColor,
                          iconSize: 64.0,
                          onPressed: _player.play,
                        );
                      } else if (processingState != ProcessingState.completed) {
                        return IconButton(
                          icon: Icon(Icons.pause),
                          color: (provider.isDarkModeEnabled()) ? darkIconColor : lightColor,
                          iconSize: 64.0,
                          onPressed: _player.pause,
                        );
                      } else {
                        return IconButton(
                          icon: Icon(Icons.replay),
                          color: (provider.isDarkModeEnabled()) ? darkIconColor : lightColor,
                          iconSize: 64.0,
                          onPressed: () => _player.seek(Duration.zero),
                        );
                      }
                    },
                  ),

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
      onPressed: ()
      {
        detect_Action(imagePath);
      },
      icon: Image.asset(
        imagePath,
        height: 40,
        width: 40,
        color: (provider.isDarkModeEnabled()) ? darkIconColor : lightColor,
      ),
    );
  }

  void detect_Action(String image)
  {
    if(image == 'assets/play_backward.png')
    {

    }/*
    else if(image == 'assets/play.png')
    {
      setState(() {
        icon = 'assets/pause.png';
      });
    }
    else if(image == 'assets/pause.png')
    {
      setState(() {
        icon = 'assets/play.png';
      });
    }*/
    else if(image == 'assets/play_forward.png')
    {

    }
  }

  Future<SourceResponse> getRadioAudio() async {
    final uri = Uri.https('api.mp3quran.net', '/radios/radio_english.json');
    // https://api.mp3quran.net/radios/radio_english.json
    final response = await http.get(uri);
    print(response.body);
    if( response.statusCode == 200 )
    {
      return SourceResponse.fromJson(jsonDecode(response.body) );
    }
    else
    {
      throw Exception(response.body);
    }
  }

}
