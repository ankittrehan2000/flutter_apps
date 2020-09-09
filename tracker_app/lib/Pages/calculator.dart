import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:veganapp/Pages/drawer_page.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  int years = 0;
  int months = 0;
  int lives = 0;
  int forest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lives Calculator"),
        backgroundColor: Colors.lightGreen[300],
      ),
      drawer: DrawerPage(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15,20,15,15),
            child: Text(
              "How Long Have you Been Vegan ?",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.height * 0.04,
                color: Colors.lightGreen[300]
              ),
            ),
          ),
          Container(
            //height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.lightGreen[300],
            ),
              child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                            "Years",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.height * 0.1,
                          child: TextField(
                            maxLength: 2,
                            maxLengthEnforced: true,
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                              counterText: "",
                              fillColor: Colors.grey[100],
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            onChanged: (number){
                              setState(() {
                                number.isEmpty? years = 0 : years = int.parse(number);
                                lives = (30 * months) + (365 * years);
                                forest = (913 * months) + (10957 * years);
                              });
                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
                          ),
                        ),
                      ]
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "Months",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.height * 0.1,
                            child: TextField(
                              maxLength: 2,
                              maxLengthEnforced: true,
                              cursorColor: Colors.green,
                              decoration: InputDecoration(
                                counterText: "",
                                fillColor: Colors.grey[100],
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                              onChanged: (number){
                                setState(() {
                                  number.isEmpty? months = 0 : months = int.parse(number);
                                  lives = (30 * months) + (365 * years);
                                  forest = (913 * months) + (10957 * years);
                                });
                              },
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
                            ),
                          ),
                        ]
                    ),
                  ],
              )
          ),
          Text(
              "You have saved $lives lives \nYou have saved $forest sq.ft of forest",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen[300],
            )
          ),
        ],
      ),
    );
  }
}

//To do: Finish the numbers and style the page better and say values are approximate
//Look for intersitial ads
