import 'package:flutter/material.dart';

class Firstexmaple extends StatefulWidget {
  @override
  State createState() => new DyanmicList();
}

class DyanmicList extends State<Firstexmaple> {
  List<String> listitems = [
    "Subhash",
    "Banti Devi",
    "Arun",
    "Ravi",
    "Manju",
    "Nisha"
  ];

  final TextEditingController input = new TextEditingController();
  @override
  Widget build(BuildContext anything) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Input Types"),
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              controller: input,
              onSubmitted: (text) {
                listitems.add(text);
                input.clear();
                setState(() {});
              },
            ),
            new Expanded(
              child: new ListView.builder(
                  itemCount: listitems.length,
                  itemBuilder: (BuildContext anything, int index) {
                    return new Card(
                        child: ListTile(title: Text(listitems[index])));
                  }),
            )
          ],
        ));
  }
}
