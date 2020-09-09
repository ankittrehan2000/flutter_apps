import 'package:flutter/material.dart';
import 'package:veganapp/Pages/home.dart';
import 'package:veganapp/Pages/recepies.dart';
import 'package:veganapp/Pages/calculator.dart';
import 'package:veganapp/Pages/tracker.dart';
import 'package:veganapp/Pages/whyVegan.dart';
import 'package:veganapp/Pages/news.dart';
import 'package:veganapp/Pages/product_data.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/recepies': (context) => Recepies(),
    '/calculator': (context) => Calculator(),
    '/tracker': (context) => Tracker(),
    '/whyVegan': (context) => WhyVegan(),
    '/news': (context) => News(),
    '/productData': (context) => Products(),
  },
));
