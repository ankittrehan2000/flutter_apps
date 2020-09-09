import 'package:flutter/material.dart';
import 'package:anxietyhelper/models/appDrawer.dart';
import 'package:anxietyhelper/meditation_helpers/meditation_cards.dart'
    show meditationCards;


class Meditation extends StatefulWidget {
  @override
  _MeditationState createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          iconTheme:
              new IconThemeData(color: Colors.lightBlue[400], size: 30.0),
          title: Text('Meditations', style: TextStyle(color: Colors.black)),
          titleSpacing: 1.5,
          elevation: 0.0,
        ),
        drawer: AppDrawer(),
        body: Container(
          child: ListView.builder(
            itemCount: meditationCards.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/meditationSounds', arguments: meditationCards[index].info);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlue[400],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          meditationCards[index].title,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.3,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: MediaQuery.of(context).size.height * 0.03,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
        );
  }
}
