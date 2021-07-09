import 'package:flutter/material.dart';
// ignore: unused_import



class Animated extends StatefulWidget {
  @override
  _AnimatedState createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {
  double mywidth = 100;
  double myheight = 100;
  Color mycolor = Colors.green;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10)).then((value) => setState(() {
                    myheight = 400;
          mycolor = Colors.pink;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: AnimatedContainer(
                duration: Duration(seconds: 5),
                width: mywidth,
                height: myheight,
                color: mycolor,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                                   myheight = 400;
                  mycolor = Colors.pink;
                });
              },
              child: Text('click me'),
            ),
          ],
        ),
      
    );
  }
}
