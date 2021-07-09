import "package:flutter/material.dart";

class Dialogbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Box"),
        backgroundColor: Colors.green,
      ),
      body: Container(
          child: Column(
        children: [
          Center(
            child: RaisedButton(
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (anything) => AlertDialog(
                    title: Text("Message"),
                    content: Text("Please Fill the Marks Fields"),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.of(anything).pop();
                        },
                        child: Text("okay"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Show alert Dialog box"),
            ),
          ),
          RichText(
            text: TextSpan(
              text:
                  "The code shows how to perform alert Dialog box in flutter. I have used a button (Raised Button in flutter ) to trigger the alert dialog box. In its on the pressed property, we have to use the showDialog widget of flutter. It takes context and a builder. In builder, we provide the AlertDialog widget with title, content(Description of a title), and actions (Yes or no buttons), and our alert dialog box is ready to use.Key Properties of Alter Dialog Box: actions: The set of actions that are displayed at the bottom of the dialog title: The title of the dialog is displayed in a large font at the top of the dialog.content: This gives a message/ description about the title which you have provided to the Alert Dialog box. backgroundColor: It provides the background color to the widget which is being used in.elevation: Elevation provided height to the widget, It gives a default shadow to the widget.",
              style: TextStyle(
                color: Colors.yellow[900],
                fontSize: 20,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
