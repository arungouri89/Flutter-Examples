import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/API/DataFetching/WithModel/Model/MAPExamplesAPI.dart';
import 'package:http/http.dart' as http;

class LsitWithLocalVariable extends StatefulWidget {
  @override
  _LsitWithLocalVariableState createState() => _LsitWithLocalVariableState();
}

class _LsitWithLocalVariableState extends State<LsitWithLocalVariable> {
  var listData = 
      [{"Name": "Arun" ,"Age":"30"},{"Name": "Ravi" ,"Age":"20"},{"Name": "Nisha" ,"Age":"20"}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: listData.length,
          itemBuilder: (contex, index) {
            return Card(child: ListTile(
              title: Text(listData[index]["Name"]),
              subtitle: Text(listData[index]["Age"]),
              
              ));
           
          },
        ));
  }
}
