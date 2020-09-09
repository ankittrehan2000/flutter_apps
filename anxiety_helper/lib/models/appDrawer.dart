import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text('App Name',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  )),
            ),
            decoration: BoxDecoration(
                //color: Colors.lightBlue[200],
                //borderRadius: BorderRadius.all(Radius.circular(70.0))
                ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text('Dog Screen'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/doggos');
            },
          ),
          ListTile(
            title: Text('Recording'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/record');
            },
          ),
          ListTile(
            title: Text('Exercises'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/exercises');
            },
          ),
          ListTile(
            title: Text('Meditations'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/meditate');
            },
          ),
          ListTile(
            title: Text('Journal'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/daily');
            },
          ),
        ],
      ),
    );
  }
}
