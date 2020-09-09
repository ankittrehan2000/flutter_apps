import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          padding: EdgeInsets.all(2.0),
          children: <Widget>[
            DrawerHeader(
              child: Text("App Name Here",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
              decoration: BoxDecoration(
                color: Colors.lightGreen[300],
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () async {
                Navigator.pushReplacementNamed(context, '/home');
              }
            ),
            ListTile(
              title: Text("Recepies"),
              onTap: () async{
                Navigator.pushReplacementNamed(context, '/recepies');
              }
            ),
            ListTile(
            title: Text("News"),
            onTap: () async {
              Navigator.pushReplacementNamed(context, '/news');
            }
            ),
            ListTile(
              title: Text("Calculator"),
              onTap: () async{
                Navigator.pushReplacementNamed(context, '/calculator');
              },
            ),
            ListTile(
              title: Text("Wiki"),
              onTap: () async{
                Navigator.pushReplacementNamed(context, '/tracker');
              },
            ),
            ListTile(
              title: Text("Tracker"),
              onTap: () async{
                Navigator.pushReplacementNamed(context, '/whyVegan');
              }
            ),
            ListTile(
                title: Text("Products"),
                onTap: () async{
                  Navigator.pushReplacementNamed(context, '/productData');
                }
            ),
          ],
      ),
    );
  }
}
