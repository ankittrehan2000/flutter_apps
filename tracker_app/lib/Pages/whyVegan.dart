import 'package:flutter/material.dart';
import 'package:veganapp/Pages/drawer_page.dart';
import 'package:veganapp/whyVeganTabs/environment.dart';
import 'package:veganapp/whyVeganTabs/health.dart';

class WhyVegan extends StatefulWidget {
  @override
  _WhyVeganState createState() => _WhyVeganState();
}

class _WhyVeganState extends State<WhyVegan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: new AppBar(
          title: new Text("Reasons To Go Vegan"),
            backgroundColor: Colors.lightGreen[300],
            bottom: new TabBar(tabs: [
              Tab(icon: Icon(Icons.flare)),
              Tab(icon: Icon(Icons.description))
            ],
              indicatorColor: Colors.white,
            ),
        ),
        drawer: DrawerPage(),
        body: TabBarView(
          children: <Widget>[
            Environment(),
            Health(),
          ],
        ),
      ),
    );
  }
}


//finish health the same way as environmental data
