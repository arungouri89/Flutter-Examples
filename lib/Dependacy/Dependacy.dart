import 'package:flutter/material.dart';
 

 
class Depedancy extends StatefulWidget {
  @override
  _DepedancyState createState() => _DepedancyState();
}

class _DepedancyState extends State<Depedancy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}