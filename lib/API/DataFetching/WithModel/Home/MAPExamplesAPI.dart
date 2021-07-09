import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/API/DataFetching/WithModel/Model/MAPExamplesAPI.dart';
import 'package:http/http.dart' as http;




class ModelExample01 extends StatefulWidget {
  

  @override
  _ModelExample01State createState() => _ModelExample01State();
}

class _ModelExample01State extends State<ModelExample01> {
     Future<Album> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}



  @override
  void initState() {
    super.initState();
    fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Using FutureBuilder'),
        ),
        body: Column(
          children: [
            Text('NOTE : \n Here We are using the example of single record this is of MAP API '),
            SizedBox(height: 30,),
            Center(
              child: FutureBuilder<Album>(
                future: fetchAlbum(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text("Title:-  " +snapshot.data.title);
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  // By default, show a loading spinner.
                  return CircularProgressIndicator();
                },
              ),
            ),
          ],
        ),
      
    );
  }
}