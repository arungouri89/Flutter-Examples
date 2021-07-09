import 'package:flutter/material.dart';

class Routing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing On Same Dart Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go For Second'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
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
