import 'package:flutter/material.dart';
import 'package:anxietyhelper/Screens/Home.dart';
import 'package:anxietyhelper/Screens/audio_saving.dart';
import 'package:anxietyhelper/Screens/dogs_photos.dart';
import 'package:anxietyhelper/Screens/meditations.dart';
import 'package:anxietyhelper/meditation_helpers/meditation_sounds.dart';
import 'package:anxietyhelper/Screens/exercises.dart';
import 'package:anxietyhelper/Screens/daily_journal.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/record': (context) => Recorder(),
    '/doggos': (context) => DogPics(),
    '/meditate': (context) => Meditation(),
    '/meditationSounds': (context) => MeditationSounds(),
    '/exercises': (context) => Exercises(),
    '/daily': (context) => Daily()
  },
));


