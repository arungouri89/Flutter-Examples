import 'package:flutter/material.dart';

class Listwithboolexample extends StatefulWidget {
  @override
  _State createState() => _State();
}

List<bool> toggle = [false, false, false];

class _State extends State<Listwithboolexample> {
  //bool firstSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter On/Off'),
      ),
      body: Column(
        children: [
          Row(children: [
            Row(children: [
              Icon(
                Icons.lightbulb,
                color: toggle[0] ? Colors.red : Colors.black,
                size: 80,
              ),
              Icon(
                Icons.lightbulb,
                color: toggle[1] ? Colors.red : Colors.black,
                size: 80,
              ),
            ]),
          ]),
          ListTile(
            leading: Icon(
              Icons.book,
            ),
            title: Text("ListTile 1"),
            tileColor: Colors.green[100],
            trailing: Switch(
              value: toggle[0],
              onChanged: (bool value) {
                setState(() {
                  toggle[0] = value;
                });
              },
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.book,
            ),
            title: Text("ListTile 1"),
            tileColor: Colors.green[100],
            trailing: Switch(
              value: toggle[1],
              onChanged: (bool value) {
                setState(() {
                  toggle[1] = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
