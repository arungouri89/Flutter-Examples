import 'package:flutter/material.dart';

class Associates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('If Condition'),
      ),
      body: MyCustomForm(),
    );
  }
}

enum BestTutorSite { ShowOne, ShowAll }

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  bool myreg = true;

  BestTutorSite _site = BestTutorSite.ShowOne;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return ListView(
        // shrinkWrap: false,
        padding: EdgeInsets.all(5.0),
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5.0)),
                    Text(
                      "Show One",
                      style: TextStyle(),
                    ),
                    Radio(
                      value: BestTutorSite.ShowOne,
                      groupValue: _site,
                      onChanged: (value) {
                        setState(() {
                          myreg = true;
                          _site = value;
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.only(left: 5.0)),
                    Text("Show All"),
                    Radio(
                      value: BestTutorSite.ShowAll,
                      groupValue: _site,
                      onChanged: (value) {
                        setState(() {
                          myreg = false;
                          _site = value;
                        });
                      },
                    ),
                  ],
                ),
                myreg
                    ? Card(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.album),
                                title: Text('The Enchanted Nightingale'),
                                subtitle: Text(
                                    'Music by Julie Gable. Lyrics by Sidney Stein.'),
                              ),
                              const ListTile(
                                leading: Icon(Icons.album),
                                title: Text('The Enchanted Nightingale'),
                                subtitle: Text(
                                    'Music by Julie Gable. Lyrics by Sidney Stein.'),
                              ),
                            ]),
                      )
                    : new Container(
                        //to show the hide content
                        height: 10,
                      ),
                
                Container(
                    height: 50,
                    width: 500,
                    child: Card(
                      child: Text(
                        "Card inside container",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
              ])
        ]);
  }
}
