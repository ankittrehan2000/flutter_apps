import 'package:flutter/material.dart';
import 'package:veganapp/classes/environmental_benefits.dart' show dataValues;
import 'package:veganapp/whyVeganTabs/expanded_data.dart';

class Environment extends StatefulWidget {
  @override
  _EnvironmentState createState() => _EnvironmentState();
}

class _EnvironmentState extends State<Environment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: dataValues.length,
            itemBuilder: (context,index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => ExData(),
                            settings: RouteSettings(
                              arguments: dataValues[index]
                            )
                      )
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    color: Colors.lightGreen[300],
                    child: Container(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(dataValues[index].url),
                          ),
                          Text(
                            dataValues[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 24.0,
                          )
                        ]
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}


