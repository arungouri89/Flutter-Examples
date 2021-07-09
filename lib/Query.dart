import 'package:flutter/material.dart';

class Querymedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Device info.'),
        ),
        body: Container(
            alignment: Alignment.center,
            color: Colors.amber[100],
            height: data.size.height / 1,
            // width: data.size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${data.devicePixelRatio}'
                  'Device : ${data.devicePixelRatio}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text('orientation :${data.orientation}'),
                Text('NavigationMode : ${data.navigationMode}'),
                Text('Device padding: ${data.padding}'),
                Text('Device size : ${data.size}'),
              ],
            )));
  }
}
