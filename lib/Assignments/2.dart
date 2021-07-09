import 'package:flutter/material.dart';
import 'package:flutter_application_1/ListExamples/Dynamiclistcreator2.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Another Way To Do'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Secondway(
                text1: "Kurushetra",
                text2: "Sector - 3 ",
                text3: "Populatin: 1 Thousand",
                image: "Nature.jpg",
                route: Secondexmaple(),
              ),
            ],
          ),
        ));
  }
}

class Secondway extends StatelessWidget {
  Secondway({this.image, this.text1, this.text2, this.text3, this.route});
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final Widget route;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Row(
            children: [
              Image.asset(
                "assets//" + image,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    text2,
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    text3,
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    child: Text("View Detail"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => route));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
