import 'package:flutter/material.dart';
import 'package:veganapp/classes/environmental_benefits.dart';

class ExData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final EnvironmentalBenefits data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
        backgroundColor: Colors.lightGreen[300],
      ),
      body: Text(data.article),
    );
  }
}
