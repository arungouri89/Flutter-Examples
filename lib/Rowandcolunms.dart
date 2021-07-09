import 'package:flutter/material.dart';

class Rowandcolumn extends StatefulWidget {
  @override
  _RowandcolumnState createState() => _RowandcolumnState();
}

class _RowandcolumnState extends State<Rowandcolumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row, Column and its Properites"),
        ),
        body: Center(
            child: new IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RaisedButton(
                child: Text('Show Row'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShowRow()),
                  );
                },
              ),
              RaisedButton(
                child: Text('Show Column'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShowColumn()),
                  );
                },
              ),
            ],
          ),
        )));
  }
}

class ShowColumn extends StatefulWidget {
  @override
  _ShowColumnState createState() => _ShowColumnState();
}

class _ShowColumnState extends State<ShowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [],
          title: Text("Column"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Column"),
            ],
          ),
        ));
  }
}

class ShowRow extends StatefulWidget {
  @override
  _ShowRowState createState() => _ShowRowState();
}

class _ShowRowState extends State<ShowRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Row"),
      ),
      body: Container(
        height: 600,
        width: 1000,
        color: Colors.red[100],
        child: Container(
          child: Text("arun"),
        ),
      ),

      /*Center(
          child: Row(
            children: [
              RichText(
                  text: TextSpan(
                text: "Everything in Horizonal Manner \n   ".toUpperCase(),
                style: TextStyle(color: Colors.yellow[900]),
              )),
              Container(
                height: 10,
                color: Colors.red,
              ),
            ],
          ),
        )
        */
    );
  }
}
