import 'package:flutter/material.dart';

class Richtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Richtext'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: RichText(
              text: TextSpan(
                  text: "Hello Arun  ".toUpperCase(),
                  style: TextStyle(color: Colors.yellow[900]),
                  children: [
                WidgetSpan(
                  child: Icon(
                    Icons.share,
                    color: Colors.red,
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
              ])),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("You are at Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Third()),
            );
          },
          child: Text('Go for Third'),
        ),
      ),
    );
  }
}

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("You are at Third Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Go for Media Query'),
        ),
      ),
    );
  }
}
