import 'package:flutter/material.dart';

class RowandColunmUI extends StatefulWidget {
  @override
  _RowandColunmUIState createState() => _RowandColunmUIState();
}

class _RowandColunmUIState extends State<RowandColunmUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row and Colunm UI"),
        ),
        //body
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                    ],
                  ),
                  Divider(height: 50, color: Colors.cyan[200]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                    ],
                  ),
                  Divider(height: 50, color: Colors.cyan[200]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                      Container(
                          height: 80,
                          width: 80,
                          child: SizedBox(child: FlutterLogo())),
                    ],
                  ),
                  Divider(height: 50, color: Colors.cyan[200]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10",)],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                      Column(
                        children: [Text("Container-80 \n Box-40, Logo-10")],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
