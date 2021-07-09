import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/API/DataFetching/RouteBundle/Model/Example01/Example01.dart';
 
 
class RouteBundleEx01 extends StatefulWidget {
  @override
  _RouteBundleEx01State createState() => _RouteBundleEx01State();
}

class _RouteBundleEx01State extends State<RouteBundleEx01> {
MapType bundledata;
   Future fetchAlbum() async {
   var rootBundleData =
      await rootBundle.loadString("assets/MyJson/MAPExample01.json");
      final jsondata = jsonDecode(rootBundleData);
      MapType getData = MapType.fromJson(jsondata);
     
      setState(() {
        bundledata = getData;
        debugPrint(bundledata.id.toString());
        
      });
      }



  @override
  void initState() {
    super.initState();
    fetchAlbum();
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
         body: ListTile(title: Text(bundledata.id.toString(),)),
        
          
      
      ),
    );
  }
}