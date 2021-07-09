import 'package:flutter/material.dart';

class ButtonDropdown extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ButtonDropdown> {
  //final List <String> arun = List.generate(50, (index) =>  )

  int days;
  String selectmonths;
  int selectYear;
  String select;
  final List daylist = List.generate(31, (int index) => index + 1);
  final List<String> monthlist = [
    "Jan",
    "Feb",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "Setember",
    "October",
    "November",
    "December"
  ];
  final _formKey = GlobalKey<FormState>();

  final List yearsList = List.generate(50, (int index) => index + 2000);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: DropdownButtonFormField(
                          hint: Text("Select Day"),

                          value: days,

                          items: daylist.map<DropdownMenuItem>(
                            (value) {
                              return DropdownMenuItem(
                                child: Text(value.toString()),
                                value: value.toString(),
                              );
                            },
                          ).toList(),

                          onChanged: (newvalue) {
                            setState(() {
                              days = newvalue;
                            });
                          },
                          // decoration: InputDecoration(
                          //   labelText: 'Select Day ',
                          // ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 2,
                      child: DropdownButtonFormField(
                        hint: Text("Select Months"),
                        value: selectmonths,
                        onChanged: (monthvalue) {
                          setState(() {
                            selectmonths = monthvalue;
                          });
                        },
                        items: monthlist
                            .map((monthvalue) => DropdownMenuItem(
                                  child: Text(monthvalue),
                                  value: monthvalue,
                                ))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        flex: 2,
                        child: DropdownButtonFormField(
                          hint: Text("Select Year"),
                          // onSaved: (val) =>
                          //     _cardDetails.expiryYear = val.toString(),

                          value: selectYear,

                          items: yearsList.map<DropdownMenuItem>(
                            (yearval) {
                              return DropdownMenuItem(
                                child: Text(yearval.toString()),
                                value: yearval,
                              );
                            },
                          ).toList(),

                          onChanged: (val) {
                            setState(() {
                              selectYear = val;
                            });
                          },
                        )),
                  ],
                ),
              ),
              //ElevatedButton(onPressed: _, child: child)
              // Text("$days" "$selectmonths" "$selectYear")
            ],
          ),
        ),
      ),
    );
  }
}
