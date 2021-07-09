import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
 
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
 
  var _formKey = GlobalKey<FormState>();

  var _currencies = ["Dollar", "Rupees"];
  var _currentItemSelected = "";
  TextEditingController principleControler = TextEditingController();
  TextEditingController amountControler = TextEditingController();
  TextEditingController rateControler = TextEditingController();
  @override
void initState(){
    super.initState();
    _currentItemSelected = _currencies[0];
  }
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:Padding(
     padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: ListView(
        children: <Widget>[
          getImageAssets(),
          Padding(
            padding: EdgeInsets.only( top: 5.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: principleControler,
              validator:(String value){
                if(value.isEmpty){
                  return "please enter a value";
                }
              },
              decoration: InputDecoration(
                  labelText: 'Principal',
                  hintText: "Enter your principle amount ex: 1000",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: amountControler,
              validator: (String value){
                if(value.isEmpty){
                  return "please enter the text";
                }
              },
              decoration: InputDecoration(
                  labelText: "Rate of intrest",
                  hintText: "Enter rate ex: 10%",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0, top: 5.0),
            child:Row(children: <Widget>[
            DropdownButton<String>(
              items: _currencies.map((String dropDownItem) {
                return DropdownMenuItem<String>(
                    value: dropDownItem,
                    child: Center(
                      child: Text(
                        dropDownItem,
                        style: TextStyle(color: Colors.red),
                      ),
                    ));
              }).toList(),
              onChanged: (String newValueSelected) {
                _onDropDownSelected(newValueSelected);
              },
              value: _currentItemSelected,
              iconSize: 30.0,
              style: TextStyle(),
            ),
            Container(
              width: 30.0,
            ),
            Expanded(
              child: TextFormField(
              keyboardType: TextInputType.number,
                controller: rateControler,
                validator: (String value){
                if(value.isEmpty){
                  return "please enter the text";
                }
                },
                decoration: InputDecoration(
                  labelText: "Time",
                  hintText: "Time for amount ex: 6 month"
                ),
            ),)
    ],
    )

          ),
          Padding(
              padding: EdgeInsets.only(),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FloatingActionButton(
                      elevation: 8.0,
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {
                        setState(() {
                          if(_formKey.currentState.validate()){
                          ShowDialog(context);
                          }
                        });
                      },
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 6.0,
                  ),
                  Expanded(
                      child: FloatingActionButton(
                    elevation: 8.0,
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    onPressed: () {
                      reset();
                    },
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  )),
                ],
              ))
        ],
      )),
    );
  }

  Widget getImageAssets() {
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 200.0,
    );
    return Container(
      child: image,
    );
  }

  void _onDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
  String calculate(){
    double principle = double.parse(principleControler.text);
    double amount = double.parse(amountControler.text);
    double rate = double.parse(rateControler.text);
    double total = (principle + (principle * rate * amount) / 100);
    String result = 'After $rate  months your intrest will be $total $_currentItemSelected';
    return result;
  }
  void reset() {
    _currentItemSelected = _currencies[0];
     principleControler.text = "";
     amountControler.text = "";
     rateControler.text = "";
  }
  void ShowDialog(BuildContext context){
    var alert = AlertDialog(title: Text("Answer"),content: Text(calculate()));
    showDialog(context: context,builder: (BuildContext context){
      return alert;
    });
  }
}