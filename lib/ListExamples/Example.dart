import 'package:flutter/material.dart';
import 'package:flutter_application_1/ListExamples/Listwithbool.dart';

import './Dynamiclistcreator1.dart';
import './Dynamiclistcreator2.dart';
//import './Listwithbool.dart';

class ListexampleTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Examples'),
        ),
        body: IntrinsicWidth(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RaisedButton(
              hoverColor: Colors.red,
              child: Text("Show First Exmaples"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Firstexmaple()));
              },
            ),
            RaisedButton(
              hoverColor: Colors.red,
              child: Text("Show Second Exmaples"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondexmaple()));
              },
            ),
            // RaisedButton(
            //   hoverColor: Colors.red,
            //   child: Text("Show List With bool"),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => Listwithboolexample()));
            //   },
            // ),
          ],
        )));
  }
}
