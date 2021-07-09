import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignments/AssignmentHome.dart';
import 'package:flutter_application_1/Test.dart';
import 'package:flutter_application_1/Testing.dart';

// import 'package:flutter_application_1/Ifcondition.dart';

// import 'package:flutter_application_1/ListExamples/Example.dart';

// import 'package:flutter_application_1/Single.dart';
// import 'package:flutter_application_1/Multi.dart';
// import 'package:flutter_application_1/CustomClipper.dart';
// import 'package:flutter_application_1/Switching.dart';
// import 'package:flutter_application_1/Validation.dart';
// import 'package:flutter_application_1/drawer_widget.dart';
// import 'package:flutter_application_1/Tabbar.dart';
// import 'package:flutter_application_1/ShowDialog.dart';
// import 'package:flutter_application_1/Panorama.dart';
// import 'package:flutter_application_1/Query.dart';
// import 'package:flutter_application_1/Colorpicker.dart';
// import './Assignments/Assignment5-5-2021.dart';
// import './ListExamples/Example.dart';
import 'Examples/ExamplesHome.dart';
import 'ListExamples/Dynamiclistcreator2.dart';
import 'Examples/ListView.dart';
import 'Projects/ProjectList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorials',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Tutorials'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.lightBlue[800],
            accentColor: Colors.cyan[600],
            textTheme: TextTheme(
                headline1: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
            )),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              onPrimary: Colors.black,
              shadowColor: Colors.orangeAccent,
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minimumSize: Size(500, 100),
            ))),
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orangeAccent,
              title: Text('Flutter Tutorial'),
            ),
            body: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: Text('Projects'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProctsList()),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 50, width: 20),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: Text('Assignment '),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AssignmentHome()),
                            );
                          },
                        ),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: Text('Tempates'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Examplelist()),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 50, width: 20),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: Text('Example List'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Examplelist()),
                            );
                          },
                        ),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: Text('Testing 01 '),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Testing()),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 50, width: 20),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: Text('Testing 02'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RowandColunmUI()),
                            );
                          },
                        ),
                      ),
                    ])
                  ]),
            ))));
  }
}
//       SizedBox(width: 20, height: 10),

//       Row(
//         children: [
//           Expanded(
//             flex: 2,
//             child: ElevatedButton(
//               child: Text('Projects'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => Examplelist()),
//                 );
//               },
//             ),
//           ),

//        Expanded(
//         flex: 2,
//         child: ElevatedButton(
//           child: Text('Design'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => ListGen()),
//             );
//           },
//         ),
//       ),
//       Expanded(
//         flex: 2,
//         child: ElevatedButton(
//           child: Text('List With age'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => Secondexmaple()),
//             );
//           },
//         ),
//       ),
//          ],
//       ),
//     ],
//   ),
// ),
// Container(
//     alignment: Alignment.center,
//     child: new IntrinsicWidth(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           RaisedButton(
//             child: Text('Single Child Widget'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Single()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('Multi Child Widget'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Multi()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('Drawer'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => DrawerWidget()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('Checkboxbutton'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Checkboxbutton()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('Custom Cliper'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Clipperview()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text(
//               'Alert Message Box',
//               style: TextStyle(color: Colors.green[900]),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => ControlleApp()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text(
//               'Form Validation Check',
//               style: TextStyle(color: Colors.blue[900]),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => FormValidation()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('Color Picker'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Color()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('If condition'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Ifcondition()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text(
//               'Switching Radio',
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Associates()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text(
//               'Panorma',
//               style: TextStyle(color: Colors.red),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Panorama()),
//               );
//             },
//           ),
//         ],
//       ),
//     )

//     // This trailing comma makes auto-formatting nicer for build methods.
//     ),
// SizedBox(
//   width: 10,
// ),
// Container(
//     alignment: Alignment.center,
//     child: new IntrinsicWidth(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           RaisedButton(
//             child: Text('Media Query'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Querymedia()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('TabbarView'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => TabbarView1()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('Dynamic List Examples'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => ListexampleTypes()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('Assignments'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Assignment1()),
//               );
//             },
//           ),
//           RaisedButton(
//             child: Text('Example List'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => Examplelist()),
//               );
//             },
//           ),

//           // RaisedButton(
//           //   child: Text('All Method in flutter'),
//           //   onPressed: () {
//           //     Navigator.push(
//           //       context,
//           //       MaterialPageRoute(
//           //           builder: (context) => AllExamplesofMethods()),
//           //     );
//           //   },
//           // ),
//         ],
//       ),
//     )

//     // This trailing comma makes auto-formatting nicer for build methods.
//     ),

// class Button extends StatelessWidget {
//   Button(
//       {this.title, this.micon, this.rcolor, this.onPressed, this.routepage});
//   final String title;
//   final IconData micon;
//   final Color rcolor;
//   final Widget onPressed;
//   final routepage;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           //Icon(micon, size: 120, color: Colors.lightBlue[900]),
//           Padding(
//             padding: EdgeInsets.only(top: 140),
//             child: Text(
//               title,
//               style: TextStyle(fontSize: 15, color: Colors.blueGrey[700]),
//             ),
//           ),
//           InkWell(onTap: () async {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => routepage));
//           }),
//         ],

//     );
//   }
// }
