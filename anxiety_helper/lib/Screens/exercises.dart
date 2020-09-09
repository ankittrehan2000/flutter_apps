import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Exercises extends StatefulWidget {
  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {

  void request() async{
    Response response = await get("https://wger.de/api/v2/exerciseinfo?&status=2", headers: {'Accept': 'application/json'});
    Map data = jsonDecode(response.body);
    print(data);
  }

  @override
  void initState(){
    super.initState();
    request();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//create a new way to find exercises - not meant for workouts and other things
