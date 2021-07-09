import 'package:flutter/material.dart';
//import 'package:flutter_application_1/API/FethingData/ExamplesAPI.dart';
import 'package:flutter_application_1/API/DataFetching/APIHome.dart';
import 'package:flutter_application_1/Examples/RowAndColumnDoubts.dart';

import 'Dropdownbutton.dart';
import 'ListView.dart';
import 'Richtext.dart';
import 'Routing.dart';
import 'ShowDialog.dart';
import 'Tabbar.dart';
import 'drawer_widget.dart';

class Examplelist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('DropDown button'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ButtonDropdown()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Tabbar View'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TabbarView()),
                          );
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Routing()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Rich Text'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Richtext()),
                          );
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
                        child: Text('Drawer Widget'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DrawerWidget()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Dialog Button'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dialogbutton()),
                          );
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
                        child: Text("API Examples"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExampleAPI()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('List With Reusability'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListGen()),
                          );
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
                        child: Text("Row and Column Doubts"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ErrorsWithRC()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
