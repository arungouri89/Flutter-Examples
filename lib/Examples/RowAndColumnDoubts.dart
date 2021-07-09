import 'package:flutter/material.dart';
 
 
class ErrorsWithRC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: 
        Row(children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text("Remove OverFlows"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RemoveOverFlow()),
                          );
                        },
                      ),
                    ), SizedBox(height: 60,width: 20,),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: Text('Remove ListView'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RemoveListView()),
                          );
                        },
                      ),
                    ),
                  ],
                
                
                    
      ),
     ) );
  }
}


 //------------Soluution 02--use SingleChildScrollView----
class RemoveOverFlow extends StatefulWidget {
  
  @override
  _RemoveOverFlowState createState() => _RemoveOverFlowState();
}

class _RemoveOverFlowState extends State<RemoveOverFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.,
            children: [
              //Case 1
              // Use Expanded Widget
              FlutterLogo(
                size: 800,
                style: FlutterLogoStyle.markOnly,
              ),

              Text('Hello World')
            ],
          ),
        ),
      ),
 ); }}

 class RemoveListView extends StatefulWidget {
  
 
   @override
   _RemoveListViewState createState() => _RemoveListViewState();
 }
 
 class _RemoveListViewState extends State<RemoveListView> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       
        body: Center(
          child: Column(
            children: <Widget>[
              FlutterLogo(
                size: 500,
              ),
              Flexible(
                child: ListView(
                  // in case of list view
                  // shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text('Map1'),
                    ),
                    ListTile(
                      leading: Icon(Icons.subway),
                      title: Text('Subway'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
