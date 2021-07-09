import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  @override
  _FormValidationState createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
      //body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                "Form-Validation In Flutter ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              //styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter E-Mail'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  //Validator
                },
                validator: (value) {
                  if (value.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return ' Enter a valid email!, Use Aleast One Uppercase letter, One \n Digit and  One Symbol';
                  }
                  return null;
                },
              ),
              //box styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              //text input

              TextFormField(
                decoration: InputDecoration(labelText: 'Enter Password'),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {},
                obscureText: true, // Shows Star
                autofocus: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter a valid password!';
                  }
                  if (value.length <= 10) {
                    return '1. Password Length Should Be of 10 Digits \n2. should be of One Uppercase letter, One Digit and  One Symbol.';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    final validate = _formKey.currentState.validate();
                    if (!validate) {
                      return;
                    } else
                      _formKey.currentState.save();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
