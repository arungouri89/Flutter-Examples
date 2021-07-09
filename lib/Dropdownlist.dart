import 'package:flutter/material.dart';

class Arun extends StatefulWidget {
  @override
  _ArunState createState() => _ArunState();
}

class _ArunState extends State<Arun> {
  final List subject = [
    "Select Subject",
    "Maths",
    "Hindi",
    "Science",
    "S.S",
    "English"
  ];
  String select = "Select Subject";

  /// To Show bydefault this value, must be match with first value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dropdownlist'),
        ),
        body: Column(
          children: [
            DropdownButton(
              value: select,
              onChanged: (value) {
                setState(() {
                  select = value;
                });
              },
              items: subject.map<DropdownMenuItem>((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
            ),
Container(child:
            Text('You have selected : ' + select,
                style: TextStyle(color: Colors.red, fontSize: 30)),
            //Text(select),
)],
        ));
  }
}
