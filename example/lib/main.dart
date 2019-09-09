library flutter_custom_dialog;

import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/components/alert_dialog.dart';
import 'package:flutter_custom_dialog/components/bean/dialog_gravity.dart';
import 'package:flutter_custom_dialog/components/listview_dialog.dart';

void main() => runApp(MyApp());

var titleTextStyle = TextStyle(fontSize: 22, color: Colors.black);

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
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("YYAlertDialog", style: titleTextStyle),
        Text("1、demo"),
        Row(
          children: <Widget>[
            makeTextButton("body", () {
              YYAlertDialogBody(context);
            }),
            makeTextButton("head&body", () {
              YYAlertDialogHeadAndBody(context);
            }),
          ],
        ),
        Text("2、gravity"),
        Row(
          children: <Widget>[
            makeTextButton("bottom", () {
              YYAlertDialogWithGravity(context, null, Gravity.bottom);
            }),
            makeTextButton("top", () {
              YYAlertDialogWithGravity(context, null, Gravity.top);
            }),
            makeTextButton("left", () {
              YYAlertDialogWithGravity(context, 250.0, Gravity.left);
            }),
            makeTextButton("right", () {
              YYAlertDialogWithGravity(context, 250.0, Gravity.right);
            }),
          ],
        ),
      ],
    ),
  );
}

showListViewDialog(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("YYListViewDialog", style: titleTextStyle),
        Text("1、demo"),
        Row(
          children: <Widget>[
            makeTextButton("listTile", () {
              YYListViewDialogListTile(context);
            }),
            makeTextButton("listButton", () {
              YYListViewDialogListButton(context);
            }),
          ],
        ),
      ],
    ),
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
