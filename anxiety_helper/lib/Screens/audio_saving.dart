import 'package:flutter/material.dart';
import 'package:anxietyhelper/models/appDrawer.dart';


class Recorder extends StatefulWidget {
  @override
  _RecorderState createState() => _RecorderState();
}

class _RecorderState extends State<Recorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[200], size: 30.0),
        title: Text(
            'App Name',
          style: TextStyle(
            color: Colors.lightBlue[200],
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey[100],
        titleSpacing: 1.5,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0), bottomLeft: Radius.circular(50.0)),
                color: Colors.grey[100],
            ),
            child: Center(
              child: Text('Recording name here',
              style: TextStyle(
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.025,
              ),)
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.12),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.play_arrow,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.stop,
                      size: 30.0,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Text(
                'Record',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0
              ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
          Text(
            'Audios',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0
            ),
          )
        ],
      ),

    );
  }
}
