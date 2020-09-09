import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:anxietyhelper/models/appDrawer.dart';

class DogPics extends StatefulWidget {
  @override
  _DogPicsState createState() => _DogPicsState();
}

class _DogPicsState extends State<DogPics> {

  List links = [];
  String jokeUrl = 'https://icanhazdadjoke.com/';
  String joke = '';
  String dogUrl = 'https://dog.ceo/api/breeds/image/random/50';

  void listLinks() async{
    Response response = await get(dogUrl);
    Map data = jsonDecode(response.body);
    setState(() {
       links = data['message'];
    });
  }

  void jokeLinks() async{
    Response response = await get(jokeUrl, headers: {'Accept': 'application/json'});
    Map data = jsonDecode(response.body);
    setState(() {
      joke = data['joke'];
    });
  }

  @override
  void initState(){
    super.initState();
    listLinks();
    jokeLinks();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[300],
          title: Text('App Name'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.fastfood)),
              Tab(icon: Icon(Icons.edit)),
              Tab(icon: Icon(Icons.edit_attributes))
            ],
          ),
        ),
        drawer: AppDrawer(),
        body: TabBarView(
          children: <Widget>[ ListView.builder(
              itemCount: links.length,
              itemBuilder: (context, index){
                return Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(5.0),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Card(
                      child: Image.network(links[index]),
                    ),
                  ),
                );
              }),
            Center(
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.75,
                          padding: EdgeInsets.all(20.0),
                          child: Center(
                            child: Text(joke,
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0
                            ),),
                          ),
                        ),
                      RaisedButton(onPressed: (){
                        jokeLinks();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('I want a new one'),
                      ),
                      color: Colors.lightBlue[300],
                      ),
                    ],
                  ),
                ),
            ),
            Text('Hey')
        ]
        ),
      ),
    );
  }
}


//to do: add to this page and fix the dog photos