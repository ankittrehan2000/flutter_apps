import 'package:flame/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:anxietyhelper/game_helpers/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:anxietyhelper/models/appDrawer.dart';

class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {

  GameController gameController = GameController();

  Future<Widget> main() async{
    Util flameUtil = Util();
    await flameUtil.fullScreen();
    await flameUtil.setOrientation(DeviceOrientation.portraitUp);
    return gameController.widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      drawer: AppDrawer(),
      body: FutureBuilder<Widget>(
        future: main(),
        builder: (context,snapshot){
          if(!snapshot.hasData){
            return SizedBox(
              child: CircularProgressIndicator(),
              width: 60,
              height: 60,
            );
          }
          return gameController.widget;
        },
      ),
    );
  }
}

//to do: find a way to exit the game and push a replacement. Go cray cray on those games lol

/*
class Games extends StatelessWidget {


  Future<Widget> main() async{
    Util flameUtil = Util();
    await flameUtil.fullScreen();
    await flameUtil.setOrientation(DeviceOrientation.portraitUp);


    return gameController.widget;
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: main(),
    builder: (_, snapshot) {
    if (!snapshot.hasData) {
    // Return something to show the future hasn't completed yet
    return CircularProgressIndicator();
    }
    return gameController.widget;
    );
  }
}
*/