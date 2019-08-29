library flutter_custom_dialog;

import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/components/alert_dialog.dart';
import 'package:flutter_custom_dialog/components/listview_dialog.dart';

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
            showListViewDialog(context),
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
            YYAlertDialog1(context);
          }),
          makeTextButton("2", () {
            YYAlertDialog2(context);
          }),
          makeTextButton("3", () {
            YYAlertDialog3(context);
          }),
        ],
      ),
    ],
  );
}

showListViewDialog(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("YYListViewDialog:"),
      Row(
        children: <Widget>[
          makeTextButton("1", () {
            YYListViewDialog1(context);
          }),
          makeTextButton("2", () {
            YYListViewDialog2(context);
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
