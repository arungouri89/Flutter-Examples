import 'package:flutter/material.dart';
  
class Testing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Container(
              child: Text('Hello World'),
            ),
             Container(
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Testing extends StatefulWidget {
//   @override
//   _TestingState createState() => _TestingState();
// }

// class _TestingState extends State<Testing> {
//   MainAxisSize _mainAxisSize = MainAxisSize.max;
//   MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
//   CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
//   TextDirection _textDirection = TextDirection.ltr;
//   VerticalDirection _verticalDirection = VerticalDirection.down;
//   TextBaseline _textBaseline = TextBaseline.alphabetic;

//   TextStyle _textStyle = const TextStyle(color: Colors.blue, fontSize: 15.5);
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: (MediaQuery.of(context).orientation == Orientation.portrait)
//           ? Column(
//               children: <Widget>[
//                 Expanded(flex: 5,
//                 child: _column()),
//                 _options()
//               ],
//             )
//           : _orientationWarning(),
//     ));
//   }

//   Container _orientationWarning() => Container(
//       alignment: Alignment.center,
//       padding: EdgeInsets.all(20),
//       child: Text("Please Rotate your Screen",
//           style: TextStyle(color: Colors.blueAccent, fontSize: 19)));

//   Expanded _options() {
//     return Expanded(
//       flex: 4,
//       child: Container(
//         color: Colors.blue[50],
//         child: SingleChildScrollView(
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _chooseMainAxisSize(),
//                 _chooseMainAxisAlignment(),
//                 _chooseCrossAxisAlignment(),
//                 _chooseTextDirection(),
//                 _chooseVerticalDirection(),
//                 _chooseTextBaseline()
//               ]),
//         ),
//       ),
//     );
//   }

//   Row _chooseCrossAxisAlignment() {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           "CrossAxisAlignment . ",
//           style: _textStyle,
//         ),
//         _crossaxisAlignmentDropDown()
//       ],
//     );
//   }

//   Row _chooseMainAxisSize() {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           "MainAxisSize . ",
//           style: _textStyle,
//         ),
//         _mainaxisSizeDropDown()
//       ],
//     );
//   }

//   Row _chooseMainAxisAlignment() {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           "MainAxisAlignment . ",
//           style: _textStyle,
//         ),
//         _mainaxisAlignmentDropDown()
//       ],
//     );
//   }

//   Row _chooseTextDirection() {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           "TextDirection . ",
//           style: _textStyle,
//         ),
//         _textDirectionDropDown()
//       ],
//     );
//   }

//   Row _chooseVerticalDirection() {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           "VerticalDirection . ",
//           style: _textStyle,
//         ),
//         _verticalDirectionDropDown()
//       ],
//     );
//   }

//   Row _chooseTextBaseline() {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           "TextBaseline . ",
//           style: _textStyle,
//         ),
//         _textBaselineDropDown()
//       ],
//     );
//   }

//   DropdownButton<MainAxisAlignment> _mainaxisAlignmentDropDown() {
//     return DropdownButton(
//       iconEnabledColor: Colors.blue,
//       underline: Container(),

//       value: _mainAxisAlignment,
//       items: [
//         DropdownMenuItem(
//             value: MainAxisAlignment.start,
//             child: Text(
//               "start",
//             )),
//         DropdownMenuItem(
//             value: MainAxisAlignment.center,
//             child: Text(
//               "center",
//             )),
//         DropdownMenuItem(
//             value: MainAxisAlignment.end,
//             child: Text(
//               "end",
//             )),
//         DropdownMenuItem(
//             value: MainAxisAlignment.spaceBetween,
//             child: Text(
//               "spaceBetween",
//             )),
//         DropdownMenuItem(
//             value: MainAxisAlignment.spaceAround,
//             child: Text(
//               "spaceAround",
//             )),
//         DropdownMenuItem(
//             value: MainAxisAlignment.spaceEvenly,
//             child: Text(
//               "spaceEvenly",
//             )),
//       ],
//       onChanged: (val) {
//         setState(() {
//           _mainAxisAlignment = val;
//         });
//       },
//     );
//   }

//   DropdownButton<CrossAxisAlignment> _crossaxisAlignmentDropDown() {
//     return DropdownButton(
//       iconEnabledColor: Colors.blue,
//       underline: Container(),

//       value: _crossAxisAlignment,
//       items: [
//         DropdownMenuItem(
//             value: CrossAxisAlignment.start,
//             child: Text(
//               "start",
//             )),
//         DropdownMenuItem(
//             value: CrossAxisAlignment.center,
//             child: Text(
//               "center",
//             )),
//         DropdownMenuItem(
//             value: CrossAxisAlignment.end,
//             child: Text(
//               "end",
//             )),
//         DropdownMenuItem(
//             value: CrossAxisAlignment.baseline,
//             child: Text(
//               "baseline",
//             )),
//         DropdownMenuItem(
//             value: CrossAxisAlignment.stretch,
//             child: Text(
//               "stretch",
//             )),
//       ],
//       onChanged: (val) {
//         setState(() {
//           _crossAxisAlignment = val;
//         });
//       },
//     );
//   }

//   DropdownButton<MainAxisSize> _mainaxisSizeDropDown() {
//     return DropdownButton(
//       iconEnabledColor: Colors.blue,
//       underline: Container(),

//       value: _mainAxisSize,
//       items: [
//         DropdownMenuItem(
//             value: MainAxisSize.max,
//             child: Text(
//               "max",
//             )),
//         DropdownMenuItem(value: MainAxisSize.min, child: Text("min")),
//       ],
//       onChanged: (val) {
//         setState(() {
//           _mainAxisSize = val;
//         });
//       },
//     );
//   }

//   DropdownButton<TextDirection> _textDirectionDropDown() {
//     return DropdownButton(
//       iconEnabledColor: Colors.blue,
//       underline: Container(),

//       value: _textDirection,
//       items: [
//         DropdownMenuItem(
//             value: TextDirection.ltr,
//             child: Text(
//               "ltr",
//             )),
//         DropdownMenuItem(value: TextDirection.rtl, child: Text("rtl")),
//       ],
//       onChanged: (val) {
//         setState(() {
//           _textDirection = val;
//         });
//       },
//     );
//   }

//   DropdownButton<VerticalDirection> _verticalDirectionDropDown() {
//     return DropdownButton(
//       iconEnabledColor: Colors.blue,
//       underline: Container(),

//       value: _verticalDirection,
//       items: [
//         DropdownMenuItem(
//             value: VerticalDirection.down,
//             child: Text(
//               "down",
//             )),
//         DropdownMenuItem(value: VerticalDirection.up, child: Text("up")),
//       ],
//       onChanged: (val) {
//         setState(() {
//           _verticalDirection = val;
//         });
//       },
//     );
//   }

//   DropdownButton<TextBaseline> _textBaselineDropDown() {
//     return DropdownButton(
//       iconEnabledColor: Colors.blue,
//       underline: Container(),

//       value: _textBaseline,
//       items: [
//         DropdownMenuItem(
//             value: TextBaseline.alphabetic,
//             child: Text(
//               "alphabetic",
//             )),
//         DropdownMenuItem(
//             value: TextBaseline.ideographic, child: Text("ideographic")),
//       ],
//       onChanged: (val) {
//         setState(() {
//           _textBaseline = val;
//         });
//       },
//     );
//   }

//   Column _column() {
//     return Column(
//       mainAxisAlignment: _mainAxisAlignment,
//       mainAxisSize: _mainAxisSize,
//       crossAxisAlignment: _crossAxisAlignment,
//       textBaseline: _textBaseline,
//       children: <Widget>[
//         Container(
//           alignment: Alignment.center,
//           color: Colors.red,
//           height: 50,
//           width: 50,
//           child: Text("Flutter"),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.blue,
//           height: 100,
//           width: 100,
//           child: Text("Guide"),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.green,
//           height: 75,
//           width: 75,
//           child: Text("Fltr"),
//         ),
//       ],
//     );
//   }
// }
