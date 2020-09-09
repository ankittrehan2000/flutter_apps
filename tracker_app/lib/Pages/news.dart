import 'package:flutter/material.dart';
import 'package:veganapp/Pages/drawer_page.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        backgroundColor: Colors.lightGreen[300],
      ),
      drawer: DrawerPage(),
    );
  }
}
