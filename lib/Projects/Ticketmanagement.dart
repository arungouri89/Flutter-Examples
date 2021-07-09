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
          title: Text("Ticket Management System"),
        ),
        body: TicketManagementSystem(),
      ),
    );
  }
}

class TicketManagementSystem extends StatefulWidget {
  @override
  _TicketManagementSystemState createState() => _TicketManagementSystemState();
}

class _TicketManagementSystemState extends State<TicketManagementSystem> {
  TextEditingController male = new TextEditingController();
  TextEditingController female = new TextEditingController();
  TextEditingController child = new TextEditingController();
  String ticket = "0";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 10,
      width: MediaQuery.of(context).size.height * 10,
      padding: EdgeInsets.all(12),
      child: Expanded(
              child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Ticket Management System",
                  style: TextStyle(
                      color: Colors.teal[50],
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                //Text("Number 1:"),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    controller: male,
                    decoration: InputDecoration(
                        labelText: 'Male',
                        hintText: "Enter No. of Male ex: 1 or 2 and more",
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
                //Text("Female:"),
                Flexible(
                  child: new TextField(
                    decoration: InputDecoration(
                        labelText: 'Female',
                        hintText: "Enter No. of Female ex: 1 or 2 and more",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    keyboardType: TextInputType.number,
                    controller: female,
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
                        labelText: 'Child or Children',
                        hintText:
                            "Enter No. of Child or Children ex: 1 or 2 and more",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    keyboardType: TextInputType.number,
                    controller: child,
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
                ElevatedButton(
                  child: Text("Generate Ticket"),
                  onPressed: () {
                    setState(() {
                      int sum = int.parse(male.text) * 15 +
                          int.parse(female.text) * 10 +
                          int.parse(child.text) * 5;
                      //ticket = sum as String;
                       ticket = sum.toString();
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Your Ticket Details is As :",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  ticket,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Rate Details is As : \n 1. Rate of male ticket is 15 Rupees. \n 2. Rate of female ticket is  is 10 Rupees.\n 3. Rate of Single child ticket is 5 Rupees. ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
