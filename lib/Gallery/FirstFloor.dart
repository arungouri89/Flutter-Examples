import 'package:flutter/material.dart';

//import 'package:flutter_application_1/Floorwise/FirstFloorphoto.dart';

class FirstFloor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome To First Floor'),
        ),
        body: Container(
          child: Stack(children: [
            Text(
              "Welcome to Kurukshetra Museum",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 20,
              ),
            ),
            SingleChildScrollView(
                padding: EdgeInsets.only(top: 120),
                child: Stack(
                  children: [
                    GridView.count(
                        shrinkWrap: true,
                        primary: false,
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 5, left: 5),
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Floordetail(
                              title: 'First Floor',
                              micon: Icons.account_balance,
                              rcolor: Colors.white10,
                              routepage: FirstFloor()),
                          // onPressed: FirstFloor()),
                        ])
                  ],
                )),
          ]),
        ));
  }
}

class Floordetail extends StatelessWidget {
  Floordetail(
      {this.title, this.micon, this.rcolor, this.onPressed, this.routepage});
  final String title;
  final IconData micon;
  final Color rcolor;
  final Widget onPressed;
  final routepage;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // elevation: 2,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Icon(micon, size: 120, color: Colors.lightBlue[900]),
          Padding(
            padding: EdgeInsets.only(top: 140),
            child: Text(
              title,
              style: TextStyle(fontSize: 15, color: Colors.blueGrey[700]),
            ),
          ),
          InkWell(onTap: () async {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => routepage));
          }),
        ],
      ),
      color: Colors.white,
    );
  }
}
