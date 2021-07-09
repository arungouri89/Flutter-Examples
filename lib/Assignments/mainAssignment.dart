import 'package:flutter/material.dart';

import 'TextProperty.dart';


 
class Assignments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(children: [
           Row(
             children: [
               Expanded(
                 flex: 2,
                                child: ElevatedButton(
                              child: Text('Text Propeties'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TextPropeties()),
                                );
                              },
                            ),
               ), Expanded(
                 flex: 2,
                                child: ElevatedButton(
                              child: Text('TabbarView'),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => TabbarView()),
                                // );
                              },
                            ),
               ),
             ],
           ),
           Row(
             children: [
               Expanded(
                 flex: 2,
                                child: ElevatedButton(
                              child: Text('Routing'),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => Routing()),
                                // );
                              },
                            ),
               ), Expanded(
                 flex: 2,
                                child: ElevatedButton(
                              child: Text('TabbarView'),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => TabbarView()),
                                // );
                              },
                            ),
               ),
             ],
           ),
        ],)
         
      ),
    );
  }
}