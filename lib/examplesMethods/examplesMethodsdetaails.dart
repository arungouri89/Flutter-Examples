import 'package:flutter/material.dart';

class ExmapleofListMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          )),
    );
  }
}
