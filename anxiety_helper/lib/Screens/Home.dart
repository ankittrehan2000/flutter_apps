import 'package:flutter/material.dart';
import 'package:anxietyhelper/models/daily_mood.dart';
import 'package:anxietyhelper/models/appDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

List abc = ['Article 1','Article 2', 'Article 3', 'Article 4'];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        iconTheme: new IconThemeData(color: Colors.lightBlue[400], size: 30.0),
        title: Text('App Name',
            style: TextStyle(
                color: Colors.black
            )),
        titleSpacing: 1.5,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, MediaQuery.of(context).size.height * 0.04, 10.0, 15.0),
            child: Text(
              'How are you feeling today?',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      DailyMood mood = DailyMood(mood: 'Happy');
                      mood.time();
                    },
                    child: Icon(
                        Icons.email,
                        size: MediaQuery.of(context).size.height * 0.035,
                      ),
                  ),
                  Icon(
                    Icons.content_paste,
                    size: MediaQuery.of(context).size.height * 0.035,
                  ),
                  Icon(
                    Icons.account_circle,
                    size: MediaQuery.of(context).size.height * 0.035,
                  ),
                  Icon(
                    Icons.ac_unit,
                    size: MediaQuery.of(context).size.height * 0.035,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue[200],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0))
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, MediaQuery.of(context).size.height * 0.045, 10.0, 20.0),
                    child: Text(
                      'Aritcles',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.04,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: abc.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                                ),
                                child: Center(
                                  child: Text(
                                      abc[index],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height * 0.03,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.3
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                          ),
                      ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
                    child: Text(
                      'Quotes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.037,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0),),
                        //color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Text(
                          '"Don\'t forget to take a deep breath"',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
