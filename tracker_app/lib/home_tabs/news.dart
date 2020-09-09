import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text("Vegan Diet",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),)
      ],
    );
  }
}
