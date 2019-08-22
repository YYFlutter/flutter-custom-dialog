library flutter_custom_dialog;

import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/components/dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            showAlertDialog(context),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("YYAlertDialog:"),
      Row(
        children: <Widget>[
          makeTextButton("1", () {
            YYAlertDialog(context);
          }),
          makeTextButton("2", () {
            YYAlertDialog(context);
          }),
        ],
      ),
    ],
  );
}

Widget makeTextButton(title, Function() function) {
  return RaisedButton(
    onPressed: () {
      function();
    },
    child: Text(title),
  );
}
