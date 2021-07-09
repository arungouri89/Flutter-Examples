import 'package:flutter/material.dart';

class Checkboxbutton extends StatefulWidget {
  @override
  _CheckboxbuttonState createState() => _CheckboxbuttonState();
}

class _CheckboxbuttonState extends State<Checkboxbutton> {
  bool intialvalue = false;
  @override
  //App widget tree
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
      ), //AppBar
      body: Center(
        /** Card Widget **/
        child: Row(
          children: <Widget>[
            Text(
              'Algorithm: ',
              style: TextStyle(fontSize: 17.0),
            ), //Text
            SizedBox(width: 10), //SizedBox
            /** Checkbox Widget **/

            Checkbox(
              checkColor: Colors.greenAccent,
              activeColor: Colors.red,
              value: this.intialvalue,
              onChanged: (bool value) {
                setState(() {
                  this.intialvalue = value;
                });
              },
            ), //Checkbox
          ], //<Widget>[]
        ),
      ), //Center//Center
      //Scaffold
    ); //MaterialApp
  }
}
