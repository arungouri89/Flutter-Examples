import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dropdownlist.dart';
import 'package:flutter_application_1/Rowandcolunms.dart';
import 'package:flutter_application_1/Reuseablity.dart';
import 'package:flutter_application_1/Examples/Richtext.dart';
import 'package:flutter_application_1/VariableCall.dart';
import 'package:flutter_application_1/GridView.dart';
import 'package:flutter_application_1/Examples/ListView.dart';
import 'Singlechild/Container.dart';

class Single extends StatefulWidget {
  @override
  _SingleState createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Single Child Widget'),
        ),
        body: Container(
            alignment: Alignment.center,
            child: new IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RaisedButton(
                    child: Text('List View'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListGen()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Reuseablity of Code'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Reuseablity()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Container'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContainerProperties()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Dropdownlist'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Arun()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Rich Text'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Richtext()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Grid View'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GridGen()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Row'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rowandcolumn()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('Variable Call'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ButtonList()),
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
