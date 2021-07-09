import 'package:flutter/material.dart';

class Shoping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid View Counts'),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
            ProductBox(
                name: "iPhone",
                description: "iPhone is the top branded phone ever",
                price: 55000,
                image: "Nature.jpg"),
            ProductBox(
                name: "Android",
                description: "Android is a very stylish phone",
                price: 10000,
                image: "Nature.jpg"),
            ProductBox(
                name: "Tablet",
                description: "Tablet is a popular device for official meetings",
                price: 25000,
                image: "images.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({this.name, this.description, this.price, this.image});
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 100,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
             Hero(tag: "Photo",child: Image.asset(
                "assets/" + image,
                width: 100,
                height: 100,
              ) ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("Product Name:" + name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Description: " + description),
                          Text("Price :" + price.toString()),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details(),
                                  ),
                                );
                              },
                              child: Text("Buy Now"))
                        ],
                      )))
            ])));
  }
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
