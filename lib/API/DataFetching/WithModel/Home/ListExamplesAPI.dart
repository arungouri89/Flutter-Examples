import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/API/DataFetching/WithModel/Model/ListExamplesAPI.dart';
import 'package:http/http.dart' as http;

Future <List<UserData>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => new UserData.fromJson(e)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

class ListExamples01 extends StatefulWidget {
  ListExamples01({Key key}) : super(key: key);

  @override
  _ListExamples01State createState() => _ListExamples01State();
}

class _ListExamples01State extends State<ListExamples01> {
   @override
  void initState() {
    super.initState();
     fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API and ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter ListView'),
        ),
        body: Center(
          child: FutureBuilder <List<UserData>>(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<UserData> listResonse = snapshot.data;
                return 
                ListView.builder(
                itemCount: listResonse.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 75,
                    color: Colors.white,
                    child: Center(child: Text(listResonse[index].title),
                  ),);
                }
              );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}