import 'package:flutter/material.dart';

class SecondFloor extends StatelessWidget {
  final checked = true;
  final checkbox = Checkbox;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // AppBar
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
        ),
        body: Column(
          children: <Widget>[
            // A Simple Text Widget that will be visible
            // all the time
            /*Text(
              'First Widget',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),*/

            /// if the condition is true
            /// //[condition == true] then
            /// below Text will be displayed
            if (checked)
              Text(
                'First Widget',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            else
              (Text(
                'Second Widget',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ))
          ],
        ),
      ),
    );
  }
}
