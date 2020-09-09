import 'package:flutter/material.dart';
import 'package:anxietyhelper/meditation_helpers/meditation_cards.dart'
    show MeditationCardInfo;
import 'package:audioplayers/audio_cache.dart';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';

class MeditationSounds extends StatefulWidget {
  @override
  _MeditationSoundsState createState() => _MeditationSoundsState();
}

void audioPlayerHandler(AudioPlayerState value) {
  print("state => $value");
}

class _MeditationSoundsState extends State<MeditationSounds> {
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = new AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final MeditationCardInfo pageInfo =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(pageInfo.title),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: pageInfo.meditationSounds.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.lightBlue[400],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      pageInfo.meditationSounds[index],
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.3,
                          color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () async {
                        audioPlayer.stop();
                        Platform.isIOS
                            ? audioPlayer.monitorNotificationStateChanges(
                                audioPlayerHandler)
                            // ignore: unnecessary_statements
                            : () {};
                        String fileName = pageInfo.meditationSounds[index];
                        audioPlayer = await audioCache.play('meditation_music/$fileName.mp3');
                      },
                      child: Icon(
                        Icons.play_arrow,
                        size: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await audioPlayer.stop();
                      },
                      child: Icon(
                        Icons.stop,
                        size: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
