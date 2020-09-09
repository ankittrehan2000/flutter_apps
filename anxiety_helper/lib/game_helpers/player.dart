import 'package:anxietyhelper/game_helpers/game_controller.dart';
import 'package:flutter/material.dart';

class Player {
   final GameController gameController;
   int maxHealth;
   int currentHealth;
   Rect playerRect;
   bool isDead = false;
   Offset circle;

   Player(this.gameController){
     maxHealth = currentHealth = 300;
     final size = gameController.tileSize * 1.5;
     //to cneter size of componenet needs to be subtracted for the component to be centerred
     playerRect = Rect.fromLTWH(gameController.screenSize.width / 2 - size / 2, gameController.screenSize.height/2 - size / 2, size, size);
     circle = Offset(50,10);
   }

   void render(Canvas c){
     Paint color = Paint()..color = Color(0xFF0000FF);
     c.drawRect(playerRect, color);
     c.drawCircle(circle, 50, color);
   }

   void update(double t){
     double distance = t;
     Offset stepToSide = Offset.fromDirection(90, distance);
     playerRect = playerRect.shift(stepToSide);
     circle.shift(stepToSide);
   }
}