import 'package:flutter/material.dart';
import 'package:veganapp/Pages/drawer_page.dart';

class Recepies extends StatefulWidget {
  @override
  _RecepiesState createState() => _RecepiesState();
}

class _RecepiesState extends State<Recepies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Recepies"),
        backgroundColor: Colors.lightGreen[300],
      ),
      drawer: DrawerPage(),
    );
  }
}
