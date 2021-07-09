import 'package:flutter/material.dart';

import 'Shoping.dart';
import 'Speedtime.dart';
import 'Ticketmanagement.dart';


class ProctsList extends StatelessWidget {
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
                        child: Text('Shoping'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shoping()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Tabbar View'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TicketManagementSystem()),
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
                        child: Text('Speed time distacne'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Speedtimedistacne()),
                          );
                        },
                      ),
                    ), SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Rich Text'),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Richtext()),
                          // );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
