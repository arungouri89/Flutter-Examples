import 'package:flutter/material.dart';
//import 'package:google\_maps\_flutter/google\_maps\_flutter.dart';

class ChildLabor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Child Labor/Missing Child Entry Form'),
      ),
      body: MyCustomForm(),
    );
  }
}

enum Gender { Male, Female }

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  //GoogleMapController mapController;
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  List<String> _locations = ['below 5', '5 to 10', '10 to 14', 'above 14'];
  String _selectedLocation;
  Gender _category = Gender.Male;
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.location_city),
              hintText: 'Enter your Place',
              labelText: 'Place',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter Place';
              }
              return null;
            },
          ),
          Container(
              child: ListView(
            shrinkWrap: true,
            // padding: EdgeInsets.all(10.0),
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Text("Gender"),
                    Row(
                      children: [
                        Icon(
                          Icons.accessibility,
                          color: Colors.grey,
                        ),
                        Padding(padding: EdgeInsets.only(left: 20.0)),
                        Text(
                          "Male",
                          style: TextStyle(),
                        ),
                        Radio(
                          value: Gender.Male,
                          groupValue: _category,
                          onChanged: (Gender value) {
                            setState(() {
                              _category = value;
                            });
                          },
                        ),
                        Padding(padding: EdgeInsets.only(left: 50.0)),
                        Text("Female"),
                        Radio(
                          value: Gender.Female,
                          groupValue: _category,
                          onChanged: (Gender value) {
                            setState(() {
                              _category = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ])
            ],
          )),
          //Padding(padding: EdgeInsets.only(left: 10.0, top: 10.0)),
          //Text("Age"),
          Padding(
            padding: EdgeInsets.only(left: 40, bottom: 0, top: 0),
            child: Divider(
              color: Colors.black,
              height: 15.0,
            ),
          ),
          Container(
            width: 400,
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                ),
                DropdownButton(
                  hint: Text('Approximate Child Age'),

                  // Not necessary for Option 1
                  value: _selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 50.0)),
                new RaisedButton(
                    child: const Text('Upload Image'), onPressed: () {}),
                Padding(padding: EdgeInsets.only(left: 50.0)),
                new RaisedButton(
                    child: const Text('Upload Video'), onPressed: () {}),
              ],
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }
}
