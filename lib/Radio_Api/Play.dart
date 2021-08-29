import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:task4_training/Controller/AppProvider.dart';
import 'package:task4_training/Radio_Api/SourceResponse.dart';

class Audio extends StatefulWidget {
  final List<Source> radios;
  Audio(this.radios);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Audio> with WidgetsBindingObserver {
  int index = 0;
  static const lightColor = const Color(0xFFb7935f);
  static const darkIconColor = const Color(0xFFF4C12F);
  late AppProvider provider;
  final _player = AudioPlayer();
  @override
  void initState() {
    super.initState();
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
      await _player.setAudioSource(
          AudioSource.uri(Uri.parse(widget.radios[index].radio_url)));
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
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Text(
            widget.radios[index].name,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 17,
            ),
          ),
          SizedBox(height:10),
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
                      color: (provider.isDarkModeEnabled())
                          ? darkIconColor
                          : lightColor,
                      iconSize: 64.0,
                      onPressed: _player.play,
                    );
                  } else if (processingState != ProcessingState.completed) {
                    return IconButton(
                      icon: Icon(Icons.pause),
                      color: (provider.isDarkModeEnabled())
                          ? darkIconColor
                          : lightColor,
                      iconSize: 64.0,
                      onPressed: _player.pause,
                    );
                  } else {
                    return IconButton(
                      icon: Icon(Icons.replay),
                      color: (provider.isDarkModeEnabled())
                          ? darkIconColor
                          : lightColor,
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
    );
  }

  IconButton myIconButton(String imagePath) {
    return IconButton(
      onPressed: () {
        setState(() {
          detectAction(imagePath);
        });
      },
      icon: Image.asset(
        imagePath,
        height: 40,
        width: 40,
        color: (provider.isDarkModeEnabled()) ? darkIconColor : lightColor,
      ),
    );
  }

  void detectAction(String image) {
    if (image == 'assets/play_backward.png') {
      setState(() {
        if (index > 0) {
          print(index);
          index--;
          _init();
        }
      });
    } else if (image == 'assets/play_forward.png') {
      setState(() {
        if (index < widget.radios.length - 1) {
          print(index);
          index++;
          _init();
        }
      });
    }
  }
}
