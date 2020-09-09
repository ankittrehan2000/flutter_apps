import 'package:flutter/material.dart';
import 'package:veganapp/Pages/drawer_page.dart';
import 'package:veganapp/home_tabs/featured.dart';
import 'package:veganapp/home_tabs/news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: new AppBar(
              title: new Text("Home Screen"),
              backgroundColor: Colors.lightGreen[300],
              bottom: new TabBar(tabs: [
                Tab(icon: Icon(Icons.dvr)),
                Tab(icon: Icon(Icons.description))
              ],
              indicatorColor: Colors.white,
              ),
            ),
          drawer: DrawerPage(),
          body: TabBarView(
            children: <Widget>[
              Featured(),
              News()
            ],
          ),
        ));
  }
}
