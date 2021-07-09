import 'package:flutter/material.dart';

class ButtonList extends StatefulWidget {
  @override
  _ButtonListState createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Color and list"),
        ),
        body: Center(
            child: new IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RaisedButton(
                child: Text('Show List'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShowColorsList()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Color Picker'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShowColors()),
                  );
                },
              ),
            ],
          ),
        )));
  }
}

class ShowColorsList extends StatefulWidget {
  @override
  _ShowColorsListState createState() => _ShowColorsListState();
}

class _ShowColorsListState extends State<ShowColorsList> {
  final List entries = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Thusday',
    'Friday',
    'Saturday'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [],
          title: Text("List of Array"),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                // color: Colors.amber[colorCodes[index]],
                child:
                    Center(child: Text('Name of Days :-  ${entries[index]}')),
              );
            }));
  }
}

class ShowColors extends StatefulWidget {
  @override
  _ShowColorsState createState() => _ShowColorsState();
}

class _ShowColorsState extends State<ShowColors> {
  final List<int> colorgreen = <int>[100, 200, 300, 400, 500, 600, 700, 800];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [],
          title: Text("List of Colors"),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: colorgreen.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  child: Column(
                children: [
                  Card(
                    child: Container(
                      height: 100,
                      color: Colors.green[colorgreen[index]],
                    ),
                  ),
                ],
              ));
            }));
  }
}
