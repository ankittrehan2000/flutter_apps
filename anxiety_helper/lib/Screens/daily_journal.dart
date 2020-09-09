import 'package:flutter/material.dart';
import 'package:anxietyhelper/daily_journal_helpers/database_handler.dart';
import 'package:anxietyhelper/models/appDrawer.dart';

class Daily extends StatefulWidget {
  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {

  TextEditingController controllerT;

  @override
  void initState() {
    super.initState();
    controllerT = new TextEditingController(text: 'Initial value');
  }

  final dbHelper = DatabaseHelper.instance;
  String inputValue; //set this equal to the same value as the text in the controller and maybe just use that to edit it
  List<dynamic> values = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Here"),
            onPressed: (){_insert("Testing calling from here", "Testing calling from there");},
          ),
          RaisedButton(
            child: Text("Check"),
            onPressed: (){_query();},
          ),
          texting(values),
          TextFormField(
            controller: controllerT,
            onChanged: (text){
              setState(() {
                inputValue = text;
              });
            },
          ),
          RaisedButton(
            onPressed: (){print(inputValue);},
          )
        ],
      ),
    );
  }

  Widget texting(List values){
    if (values.isNotEmpty){
      return Text(values[0]["_title"]);
    }
    return Text("Loading");
  }

  void _insert(String title, String content) async{

    Map<String,dynamic> row = {
      DatabaseHelper.columnTitle: title,
      DatabaseHelper.columnContent: content
    };

    final id = await dbHelper.insert(row);
    print('inserted row id: $id');
  }

  void _query() async{
    final allRows = await dbHelper.queryAllRows();
    print(allRows);
    setState(() {
      values = allRows;
    });
    print(values[0]["_title"]);
    //allRows.forEach((row) => print(row));
  }
}

//finish daily journal
