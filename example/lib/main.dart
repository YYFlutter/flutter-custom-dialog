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
            showProgressDialog(context),
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
            makeTextButton("head", () {
              YYAlertDialogHeadAndBody(context);
            }),
            makeTextButton("divider", () {
              YYAlertDialogWithDivider(context);
            }),
          ],
        ),
        Text("2、dialog gravity"),
        Row(
          children: <Widget>[
            makeTextButton("bottom", () {
              YYAlertDialogWithGravity(
                context: context,
                gravity: Gravity.bottom,
              );
            }),
            makeTextButton("top", () {
              YYAlertDialogWithGravity(
                context: context,
                gravity: Gravity.top,
              );
            }),
            makeTextButton("left", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                gravity: Gravity.left,
              );
            }),
            makeTextButton("right", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                gravity: Gravity.right,
              );
            }),
            makeTextButton("center", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                gravity: Gravity.center,
              );
            }),
          ],
        ),
        Text("3、double button gravity"),
        Row(
          children: <Widget>[
            makeTextButton("left", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                doubleButtonGravity: Gravity.left,
              );
            }),
            makeTextButton("right", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                doubleButtonGravity: Gravity.right,
              );
            }),
            makeTextButton("center", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                doubleButtonGravity: Gravity.center,
              );
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
            makeTextButton("listRadio", () {
              YYListViewDialogListButton(context);
            }),
          ],
        ),
      ],
    ),
  );
}

showProgressDialog(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("YYProgressDialog", style: titleTextStyle),
        Text("1、demo"),
        Row(
          children: <Widget>[
            makeTextButton("title", () {}),
          ],
        ),
      ],
    ),
  );
}

Widget makeTextButton(title, Function() function) {
  return SizedBox(
    width: 70.0,
    height: 35.0,
    child: RaisedButton(
      padding: EdgeInsets.all(0.0),
      onPressed: () {
        function();
      },
      child: Text(title),
    ),
  );
}
