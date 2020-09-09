import 'package:flutter/material.dart';
import 'package:veganapp/Pages/drawer_page.dart';
import 'package:veganapp/classes/tracker_data.dart';
import 'package:veganapp/classes/tracker_elements.dart';

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  final db = DatabaseCreator.instance;

  List<TrackerElements> trackerElements = [
    TrackerElements(
        labelText: "How much protein have you consumed?",
        nutrientName: "protein",
        maxVal: 100.0,
        divisions: 10,
        nutrientVal: 0
    ),
    TrackerElements(
      labelText: "How much iron have you gotten today?",
      nutrientName: "iron",
      maxVal: 20.0,
      divisions: 10,
      nutrientVal: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Vitamin Tracker"),
          backgroundColor: Colors.lightGreen[300],
        ),
        drawer: DrawerPage(),
        body: ListView.builder(
          itemCount: trackerElements.length,
          itemBuilder: (context, index) {
            return Column(children: <Widget>[
              Text(trackerElements[index].labelText),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.lightGreen[500],
                    inactiveTrackColor: Colors.lightGreen[500],
                    trackShape: RoundedRectSliderTrackShape(),
                    trackHeight: MediaQuery.of(context).size.height * 0.01,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    thumbColor: Colors.green,
                    overlayColor: Colors.lightGreen[300],
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                    tickMarkShape: RoundSliderTickMarkShape(),
                    activeTickMarkColor: Colors.lightGreen[500],
                    inactiveTickMarkColor: Colors.lightGreen[500],
                    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                    valueIndicatorColor: Colors.green[700],
                    valueIndicatorTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Slider(
                      value: trackerElements[index].nutrientVal,
                      min: 0.0,
                      max: trackerElements[index].maxVal,
                      divisions: trackerElements[index].divisions,
                      label: trackerElements[index].nutrientVal.toString(),
                      onChanged: (value) {
                        setState(() {
                          trackerElements[index].nutrientVal = value;
                        });
                      }),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  print(trackerElements[0].nutrientVal);
                  print(trackerElements[1].nutrientVal);
                },
              )
            ]);
          },
        ));
  }
}

void _insert() async {
  Map<String, dynamic> row = {DatabaseCreator.columnProtein: 10};
  final id = await DatabaseCreator.insert(row);
  print('inserted row id: $id');
}

//Write the list view builder with some additional information. And write the sqlflite program and on tap button go to the
//display page for the info using the database queries
//give them conversions in order to know how much they are eating everyday
//add a checkbox for B12 suppliments
