import 'package:flutter/material.dart';

class Reuseablity extends StatefulWidget {
  @override
  _ReuseablityState createState() => _ReuseablityState();
}

class _ReuseablityState extends State<Reuseablity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reuseablity'),
      ),
      body: Center(
          child: Container(
              color: Colors.amber,
              child: ListView(
                children: [
                  Card(
                    child: Detail(
                      name: "NIC",
                      regno: "NIC-101",
                    ),
                  ),
                  Card(
                    child: Detail(
                      name: "NIC",
                      regno: "NIC-101",
                    ),
                  ),
                  Card(
                    child: Detail(
                      name: "NIC",
                      regno: "NIC-101",
                    ),
                  ),
                  Card(
                    child: Detail(
                      name: "NIC",
                      regno: "NIC-101",
                    ),
                  ),
                ],
              ))),
    );
  }
}

class Detail extends StatefulWidget {
  Detail({this.regno, this.name});
  final String regno;
  final String name;

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text('Name \n' + widget.name),
          ],
        ),
        Row(
          children: [
            Text('Reg. No \n' + widget.regno),
          ],
        ),
      ],
    );
  }
}

// In flutter, Widget is a way to declare and construct UI. ...
//A widget might display Something, it might help define design, it might help with layout, it may handle user interaction, etc.
// For example, Padding is a widget, Margin is a widget, Center is a widget, Layout rows and columns are also widgets

// This Keyword
// It can be used to make or Initiate current class constructor
// It can be passed as an argument in the method call
// It can be used to make a current class method
// It can be used to refer to the instance variable of the current class
// It can be passed as an argument in the constructor call
// It can be used to return the current class Instance  this keyword
