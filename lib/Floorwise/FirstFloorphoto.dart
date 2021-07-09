import 'package:flutter/material.dart';

class FirstFloorphoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final data = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Your Are At First Floor'),
          //debugShowCheckedModeBanner: false,
        ),
        body: Container(
          child: Stack(children: [
            Text(
              "Content Of First Floor",
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
                          //onPressed: FirstFloor()),
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
