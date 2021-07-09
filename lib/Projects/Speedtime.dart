import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Speed, Time and Distance Calculator System"),
        ),
        body: Speedtimedistacne(),
      ),
    );
  }
}

class Speedtimedistacne extends StatefulWidget {
  @override
  _TicketManagementSystemState createState() => _TicketManagementSystemState();
}

class _TicketManagementSystemState extends State<Speedtimedistacne> {
  TextEditingController speed = new TextEditingController();
  TextEditingController time = new TextEditingController();
  TextEditingController distance = new TextEditingController();
  String totalspeed = "0";
  String totaltime = "0";
  String totaldistance = "0";

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height /2,
      //width: MediaQuery.of(context).size.height /2,
      padding: EdgeInsets.all(12),
      child: Expanded(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Text(
                    "Speed, Time and Distance Calculator System",
                    style: TextStyle(
                        color: Colors.teal[50],
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    controller: speed,
                    decoration: InputDecoration(
                        labelText: 'Enter Speed',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: new TextField(
                    decoration: InputDecoration(
                        labelText: 'Enter distance',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    keyboardType: TextInputType.number,
                    controller: distance,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: new TextField(
                    decoration: InputDecoration(
                        labelText: 'Enter time ',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    keyboardType: TextInputType.number,
                    controller: time,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Total Speed is : ' + totalspeed,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Total Time is : ' + totaltime,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Total Distance is : " + totaldistance,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("Calculate Speed"),
                  onPressed: () {
                    setState(() {
                      double calspeed = (double.parse(distance.text) /
                          (double.parse(time.text)));
                      totalspeed = calspeed.toString();
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text("Calculate Time"),
                  onPressed: () {
                    setState(() {
                      double caltime = (double.parse(distance.text) /
                          (double.parse(speed.text)));
                      totaltime = caltime.toString();
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text("Calculate Distance"),
                  onPressed: () {
                    setState(() {
                      double caldistacne = (double.parse(speed.text) *
                          (double.parse(time.text)));
                      totaldistance = caldistacne.toString();
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("Reset"),
                  onPressed: () {
                    reset() {
                      
                      speed.text = "";
                      time.text = "";
                      distance.text = "";
                    }
                  },
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
