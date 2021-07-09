import 'package:flutter/material.dart';

class GridGen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Counts'),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        children: List.generate(
          10,
          (index) {
            return Card(
              //elevation: 100,
              color: Colors.amber,
            );
          },
        ),
      ),
    );
  }
}
