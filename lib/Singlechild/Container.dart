import 'package:flutter/material.dart';

class ContainerProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container '),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
            ProductBox(
                name: "Container",
                description: "It is a Single child Widget",
                properties:
                    "Properties \n 1.	alignment → AlignmentGeometry? \n 2.	child → Widget? \n 3.	clipBehavior → Clip \n 4.	color → Color? \n 5.	constraints → BoxConstraints?\n 6.	decoration → Decoration? \n 7.	foregroundDecoration → Decoration?\n 8.	hashCode → int \n 9.	key → Key?\n 10.	margin → EdgeInsetsGeometry? \n 11.	padding → EdgeInsetsGeometry? \n 12.	runtimeType → Type \n 13.	transform → Matrix4? \n 14.	transformAlignment → AlignmentGeometry? \n")
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({this.name, this.description, this.properties});
  final String name;
  final String description;
  final String properties;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 500,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.properties,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      )))
            ])));
  }
}
