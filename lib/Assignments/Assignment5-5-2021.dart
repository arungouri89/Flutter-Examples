import 'package:flutter/material.dart';
import './2.dart';

//import 'package:flutter_application_1/Floorwise/FirstFloorphoto.dart';

class Assignment1 extends StatefulWidget {
  @override
  _Assignment1State createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: Row(
                children: [
                  Image.network(
                    'https://ichef.bbci.co.uk/news/976/cpsprodpb/4B41/production/_114556291_mediaitem114556289.jpg',
                    height: 90,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    //mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delhi",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "India",
                        style: TextStyle(color: Colors.black45),
                      ),
                      Text(
                        "Populatin: 19 Mill",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Second Way",
        hoverColor: Colors.red,
        child: Text("Show 2"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Second()));
        },
      ),
    );
  }
}
