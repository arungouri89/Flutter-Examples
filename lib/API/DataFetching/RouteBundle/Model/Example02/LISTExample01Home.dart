
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_1/API/DataFetching/RouteBundle/Model/Example02/LISTExample01.dart';

class RouteBundleEx02 extends StatefulWidget {
  @override
  _RouteBundleEx02State createState() => _RouteBundleEx02State();
}

class _RouteBundleEx02State extends State<RouteBundleEx02> {
  List<ListType> bundledata;
  Future fetchAlbum() async {
    String rootBundleData =
        await rootBundle.loadString("assets/MyJson/ListExample01.json");
    //final jsondata = jsonDecode(rootBundleData);
    //ListType getData = ListType.fromJson(jsondata);

    setState(() {
      bundledata = listTypeFromJson(rootBundleData);
      debugPrint(bundledata[0].id.toString());
    });
  }

  @override
  void initState() {
    super.initState();
    fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(
            itemCount: 
            bundledata==null ? 0: bundledata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text("Id: "+bundledata[index].id.toString()),
                  subtitle: Text(
                    bundledata[index].title,
                  ),
                  trailing: Text(
                    bundledata[index].userId.toString(),
                  ),
                ),
              );
            }));
  }
}
