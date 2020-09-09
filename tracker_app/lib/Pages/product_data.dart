import 'package:flutter/material.dart';
import 'package:veganapp/Pages/drawer_page.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products that I can use while I am vegan"),
        backgroundColor: Colors.lightGreen[300],
      ),
      drawer: DrawerPage(),
    );
  }
}
