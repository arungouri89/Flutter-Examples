import 'package:flutter/material.dart';

import 'package:flutter_application_1/Rowandcolunms.dart';
import 'package:flutter_application_1/Reuseablity.dart';

import 'package:flutter_application_1/GridView.dart';
import 'package:flutter_application_1/Examples/ListView.dart';

class Multi extends StatefulWidget {
  @override
  _MultiState createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Multi Child Widget'),
        ),
        body: Container(
            alignment: Alignment.center,
            child: new IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RaisedButton(
                    child: Text('Row and Column'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rowandcolumn()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('ListView'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Reuseablity()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Expanded'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GridGen()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Table'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListGen()),
                      );
                    },
                  ),
                ],
              ),
            )

            // This trailing comma makes auto-formatting nicer for build methods.
            ));
  }
}
