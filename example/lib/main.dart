library flutter_custom_dialog;

import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:flutter_custom_dialog/components/example/alert_dialog.dart';
import 'package:flutter_custom_dialog/components/bean/dialog_gravity.dart';
import 'package:flutter_custom_dialog/components/example/listview_dialog.dart';
import 'package:flutter_custom_dialog/components/example/progress_dialog.dart';

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
            showDevelopDialog(context),
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
            makeTextButton("divider", () {
              YYAlertDialogWithDivider(context);
            }),
            makeTextButton("listTile", () {
              YYListViewDialogListTile(context);
            }),
            makeTextButton("listRadio", () {
              YYListViewDialogListRadio(context);
            }),
          ],
        ),
        Row(
          children: <Widget>[
            makeTextButton("nobody", () {
              YYProgressDialogNoBody(context);
            }),
            makeTextButton("body", () {
              YYProgressDialogBody(context);
            }),
            makeTextButton("pop\nmenu", () {
              YYAlertDialogPopMenu(context);
            }),
          ],
        ),
        Text("2、dialog property"),
        Row(
          children: <Widget>[
            makeTextButton("duration", () {
              YYAlertDialogWithDuration(context);
            }),
            makeTextButton("barrier\ncolor", () {
              YYAlertDialogWithbarrierColor(context, Colors.redAccent);
            }),
            makeTextButton("transparent\ncolor", () {
              YYAlertDialogWithbarrierColor(context, Colors.transparent);
            }),
            makeTextButton("background\ncolor", () {
              YYAlertDialogWithBackgroundColor(context);
            }),
            makeTextButton("barrier\ndismiss", () {
              YYAlertDialogWithBarrierDismiss(context);
            }),
          ],
        ),
        Text("3、dialog gravity"),
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
        Row(
          children: <Widget>[
            makeTextButton("left\nbottom", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                gravity: Gravity.leftBottom,
              );
            }),
            makeTextButton("left\ntop", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                gravity: Gravity.leftTop,
              );
            }),
            makeTextButton("right\nbottom", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                gravity: Gravity.rightBottom,
              );
            }),
            makeTextButton("right\ntop", () {
              YYAlertDialogWithGravity(
                context: context,
                width: 250.0,
                gravity: Gravity.rightTop,
              );
            }),
          ],
        ),
        Text("4、double button gravity"),
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
        Text("5、dialog animation"),
        Row(
          children: <Widget>[
            makeTextButton("scaleIn", () {
              YYAlertDialogWithScaleIn(context);
            }),
            makeTextButton("fadeIn", () {
              YYAlertDialogWithFadeIn(context);
            }),
            makeTextButton("rotateIn", () {
              YYAlertDialogWithRotateIn(context);
            }),
            makeTextButton("customIn", () {
              YYAlertDialogWithCustomIn(context);
            }),
          ],
        ),
      ],
    ),
  );
}

showDevelopDialog(BuildContext context) {
  YYDialog yyDialog;

  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("YYDevelopDialog", style: titleTextStyle),
        Text("1、Debug"),
        Row(
          children: <Widget>[
            makeTextButton("fix dismiss\nbug in v1.0.1", () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Scaffold(
                          body: Column(
                            children: <Widget>[
                              makeTextButton("show", () {
                                yyDialog = YYAlertDialogBody(context);
                              }),
                              makeTextButton("dismiss", () {
                                yyDialog?.dismiss();
                              }),
                            ],
                          ),
                        )),
              );
            }),
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
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12.0),
      ),
    ),
  );
}
