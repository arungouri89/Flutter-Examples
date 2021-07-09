import 'package:flutter/material.dart';
//import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; //Step 2

//import 'dart:convert'; // to convert the http response in JSON format
class MapAPIExample01 extends StatefulWidget {
  @override
  _MapAPIExample01State createState() => _MapAPIExample01State();
}

class _MapAPIExample01State extends State<MapAPIExample01> {
  //final String video1 = "o0-kHH5-7zE";
  Map data; //Step 2
  List userData; //Step 2

  Future getData() async {
    var response =
        await http.get(Uri.parse("https://reqres.in/api/users?page2"));
    //await http.get(Uri.parse("https://api.first.org/data/v1/teams?country=br&pretty=true"));
    //await http.get(Uri.parse("https://api.first.org/data/v1/teams"));
    //await http.get(Uri.parse("http://103.87.24.57/HelpTheNeedyAPI/api/NGOAction"));
    debugPrint(response.body);

    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
        userData = data["data"];
      });
    }

// setState(() {
//     userData = data.entries.map( (entry) => userData).toList();
// });

    //debugPrint(userData.toString()); //Step 2
    //See the output in DEBUG CONSOLE we get in STEP 1 & STEP 2
    //in STEP 2 we only get the data
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api'),
      ),
      body: ListView.builder(
        itemCount: userData == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(userData[index]["avatar"]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      " ${userData[index]["first_name"]} ${userData[index]["last_name"]}"),
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}

//Single User Name
//Text(userData[index]["email"].toString());
//Rajeev
//Text(userData[index]);
// Team
//Text(userData[index]["id"]);
// Country 1
// Text(userData[index]["data"]["id"].toString());
// Country 2
// Text(userData[index]["team"].toString());
// Text(" ${userData[index]["id"]}"
//   "${userData[index]["first_name"]} ${userData[index]["last_name"]}");
