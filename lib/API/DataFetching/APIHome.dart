import 'package:flutter/material.dart';
import 'package:flutter_application_1/API/DataFetching/RouteBundle/Model/Example02/LISTExample01Home.dart';
import 'RouteBundle/Model/Example01/Example01Home.dart';
import 'WithModel/Home/ListExamplesAPI.dart';
import 'Without Model/ListWithLocalVariable.dart';
import 'WithModel/Home/MAPExamplesAPI.dart';
import 'Without Model/MapAPIExample01.dart';
import 'Without Model/MapAPIExample02.dart';
import 'Without Model/MapAPIExample03.dart';



class ExampleAPI extends StatelessWidget {
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
                   Text('API Using MAP'),Row(
                  children: [
                   
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Example 01'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MapAPIExample01()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Example 02'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MapAPIExample02()),
                          );
                        },
                      ),
                    ),
                     SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Example 03'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MapAPIExample03()),
                          );
                        },
                      ),
                    ),
                  ],
                )],),
                Column(children: [
                   Text('API Using List'),Row(
                  children: [
                   
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('List View Builder'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MapAPIExample01()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Future Builder'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MapAPIExample01()),
                          );
                        },
                      ),
                    ),
                  ],
                )],
                ),
                Column(children: [
                   Text('API Using Model '),Row(
                  children: [
                   
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('MAP''s'' Exampale'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ModelExample01()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('LIST''s'' Exampale'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>ListExamples01()),
                          );
                        },
                      ),
                    ),
                  ],
                )],),Column(children: [
                   Text('Local List'),Row(
                  children: [
                   
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Through List'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LsitWithLocalVariable()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Root Bundle'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>RouteBundleEx01()),
                          );
                        },
                      ),
                    ),
                  ],
                )],),
                Column(children: [
                   Text('Root Bundle'),Row(
                  children: [
                   
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Map'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RouteBundleEx01()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('List'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>RouteBundleEx02()),
                          );
                        },
                      ),
                    ),
                  ],
                )],)
              
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
