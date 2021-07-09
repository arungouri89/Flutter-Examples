import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Drawer'),
        ),
        body: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/Logo/GitaUpdesh.png',
                  ),
                ),
                title: Text("Kurukshetra"),
                subtitle: Text(
                  "Welcome to Holy Land",
                ),
              ),
              Divider(
                color: Colors.red,
              ),
              ListTile(
                leading: Icon(
                  Icons.description,
                  color: Colors.green,
                  size: 30.0,
                ),
                title: Text(
                  "Kurukshetra At A Glance",
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.description,
                  color: Colors.green,
                  size: 30.0,
                ),
                title: Text(
                  "Destinations",
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.photo,
                  color: Colors.green,
                  size: 30.0,
                ),
                title: Text(
                  "My Trips",
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.photo,
                  color: Colors.green,
                  size: 30.0,
                ),
                title: Text(
                  "Photos",
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.video_label,
                  color: Colors.green,
                  size: 30.0,
                ),
                title: Text(
                  "Videos",
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text(
                  "Nearby",
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text(
                  "Invite Friend",
                ),
                onTap: () {},
              ),
              ExpansionTile(
                title: Text("Contact Us"),
                children: <Widget>[
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Icon(
                          Icons.call,
                        ), // icon-1
                        Icon(Icons.message), // icon-2
                        Icon(Icons.messenger),
                      ],
                    ),
                    title: Text("Mini Sec Kurukshetra"),
                    //subtitle: Text(""),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              ListTile(
                leading: Icon(
                  Icons.photo,
                  color: Colors.green,
                  size: 30.0,
                ),
                title: Text(
                  "Disclaimer",
                ),
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
