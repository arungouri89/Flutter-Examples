import 'package:flutter/material.dart';

import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';

class Color extends StatefulWidget {
  @override
  _ColorState createState() => _ColorState();
}

class _ColorState extends State<Color> {
  final add = "flutter_hsvcolor_picker: ^0.0.1";
  final pack =
      "import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Color Pickers"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new ColorPicker(color: Colors.blue, onChanged: (value) {}),
            RichText(
                text: TextSpan(
              text: "Color Pickers".toUpperCase(),
              style: TextStyle(color: Colors.red),
            )),
            Text(
              "Follow these Steps to run the color picker",
              style: TextStyle(color: Colors.red),
            ),
            Text("Add this in yaml file:-\n," + add),
            Text("Add this in yaml file:-\n," + pack),
          ],
        ));
  }
}
