import 'package:flutter/material.dart';

class ListGen extends StatelessWidget {
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
            Container(
              color: Colors.green,
              child: ProductBox(
                  name: "Desktop",
                  description: "Desktop is most popular for regular use",
                  price: 10000,
                  image: "images.jpg"),
            )
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
              Image.asset(
                "assets/" + image,
                width: 100,
                height: 100,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(description),
                          Text("Price Value:" + price.toString()),
                        ],
                      )))
            ])));
  }
}
