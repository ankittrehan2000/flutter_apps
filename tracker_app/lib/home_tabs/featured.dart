import 'package:flutter/material.dart';
import 'package:veganapp/classes/tracker_containers.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

List<FeaturedTracker> trackerTabs = [
  FeaturedTracker(title: "What is the status"),
  FeaturedTracker(title: "People will enter"),
  FeaturedTracker(title: "Their vitamins here"),
];

class _FeaturedState extends State<Featured> {
  bool checkboxState;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trackerTabs.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Row(children: <Widget>[
              Text(
                trackerTabs[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Checkbox(
                onChanged: (bool e) => () {},
                value: false,
              ),
            ]),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightGreen[200],
            ),
          ),
        );
      },
    );
  }
}
