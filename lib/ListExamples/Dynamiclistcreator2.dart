import 'package:flutter/material.dart';

class Secondexmaple extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Secondexmaple> {
  final List<String> itemlist = <String>[
    "https://awebplan.com/wp-content/uploads/2017/12/pen.jpg",
    "Pen",
    "Pencil",
    "Black Board",
    "Duster",
   
  ];
  final List<int> pricelist = <int>[
    2,
    1,
    100,
    10,
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Two List Joining'),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: itemlist.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                margin: EdgeInsets.all(2),
                // color: age[index] >= 40
                //     ? Colors.blue[400]
                //     : age[index] <= 30
                //         ? Colors.blue[100]
                //         : Colors.grey,
                child: Center(
                  child: Column(children: [
                    Text(
                  '${itemlist[index]} (${pricelist[index]})',
                  // '"Name is"${names[index]} "Age is"${age[index]}',
                  style: TextStyle(fontSize: 18),
                )],)
                )
              );
            }));
  }
}
