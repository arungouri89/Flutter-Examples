import 'package:flutter/material.dart';

import 'AnimatedContainer.dart';


class AssignmentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Text('API Exmaples List'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(children: [
                   Text('Map API Examples'),Row(
                  children: [
                   
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Animated Container'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Animated()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Example 02'),
                        onPressed: () {}
                      ),
                    ),
                     SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Example 03'),
                        onPressed: () {}
                      ),
                    ),
                  ],
                )],),
                
              
                // Row(
                //   children: [
                //     Expanded(
                //       flex: 2,
                //       child: ElevatedButton(
                //         child: Text('Models'),
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (context) => MapAPIExample01()),
                //           );
                //         },
                //       ),
                //     ), SizedBox(height: 60,width: 20,),
                //     // Expanded(
                //     //   flex: 2,
                //     //   child: ElevatedButton(
                //     //     child: Text('Rich Text'),
                //     //     onPressed: () {
                //     //       Navigator.push(
                //     //         context,
                //     //         MaterialPageRoute(builder: (context) => Richtext()),
                //     //       );
                //     //     },
                //     //   ),
                //     // ),
                //   ],
                // ),
                   ],
            ),
          ),
    );
  }
}
