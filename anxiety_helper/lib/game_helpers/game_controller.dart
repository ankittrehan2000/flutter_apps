import 'package:flame/game.dart';
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/material.dart';
import 'package:anxietyhelper/game_helpers/player.dart';

class GameController extends Game with PanDetector{

  Size screenSize;
  //to keep enemy size same
  double tileSize;
  Player player;

  GameController(){
    initialize();
  }

  void initialize() async{
    resize(await Flame.util.initialDimensions());
    player = Player(this);
  }

  @override
  void render(Canvas c){
    //order matters here. Player is on top of hte background
    Rect background = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint backgroundPaint = Paint()..color = Color(0xFFB9F6CA);
    c.drawRect(background, backgroundPaint);
    player.render(c);
  }

  @override
  void update(double t){
    //player.update(1);
  }

  @override
  void resize(Size size){
    screenSize = size;
    tileSize = screenSize.width/10;
  }

  @override
  void onPanEnd(DragEndDetails d){
    print(d.velocity.pixelsPerSecond.dx.abs());
    print(d.velocity.pixelsPerSecond.dy.abs());
  }
}