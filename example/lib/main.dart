library flutter_custom_dialog;

import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog_example/dialog/alert_dialog.dart';
import 'package:flutter_custom_dialog_example/dialog/bottom_sheet_dialog.dart';
import 'package:flutter_custom_dialog_example/dialog/listview_dialog.dart';
import 'package:flutter_custom_dialog_example/dialog/progress_dialog.dart';
import 'package:flutter_custom_dialog_example/dialog/notice_dialog.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

import 'dialog/develop_dialog.dart';

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

/*
 * When you init App, you can Initialize YYDialog so that use YYDialog.build().show() everywhere.
 */
class AppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    //1、初始化context
    YYDialog.init(context);
    //2、后续使用可以不需要context
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
              YYAlertDialogBody();
            }),
            makeTextButton("head&body", () {
              YYAlertDialogHeadAndBody();
            }),
            makeTextButton("divider", () {
              YYAlertDialogWithDivider();
            }),
            makeTextButton("listTile", () {
              YYListViewDialogListTile();
            }),
            makeTextButton("listRadio", () {
              YYListViewDialogListRadio();
            }),
          ],
        ),
        Row(
          children: <Widget>[
            makeTextButton("bottom\nsheet", () {
              YYBottomSheetDialog();
            }),
            makeTextButton("progress", () {
              YYProgressDialogNoBody();
            }),
            makeTextButton("progress\n&body", () {
              YYProgressDialogBody();
            }),
            makeTextButton("pop\nmenu", () {
              YYAlertDialogPopMenu();
            }),
            makeTextButton("custom\nx&y", () {
              YYAlertDialogCustomXY();
            }),
          ],
        ),
        Row(
          children: <Widget>[
            makeTextButton("notice", () {
              YYNoticeDialog();
            }),
            makeTextButton("callback", () {
              YYNoticeDialogCallback();
            }),
          ],
        ),
        Text("2、dialog property"),
        Row(
          children: <Widget>[
            makeTextButton("duration", () {
              YYAlertDialogWithDuration();
            }),
            makeTextButton("barrier\ncolor", () {
              YYAlertDialogWithbarrierColor(Colors.redAccent);
            }),
            makeTextButton("transparent\ncolor", () {
              YYAlertDialogWithbarrierColor(Colors.transparent);
            }),
            makeTextButton("background\ncolor", () {
              YYAlertDialogWithBackgroundColor();
            }),
            makeTextButton("barrier\ndismiss", () {
              YYAlertDialogWithBarrierDismiss();
            }),
          ],
        ),
        Text("3、dialog gravity"),
        Row(
          children: <Widget>[
            makeTextButton("bottom", () {
              YYAlertDialogWithGravity(
                gravity: Gravity.bottom,
              );
            }),
            makeTextButton("top", () {
              YYAlertDialogWithGravity(
                gravity: Gravity.top,
              );
            }),
            makeTextButton("left", () {
              YYAlertDialogWithGravity(
                width: 250.0,
                gravity: Gravity.left,
              );
            }),
            makeTextButton("right", () {
              YYAlertDialogWithGravity(
                width: 250.0,
                gravity: Gravity.right,
              );
            }),
            makeTextButton("center", () {
              YYAlertDialogWithGravity(
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
                width: 250.0,
                gravity: Gravity.leftBottom,
              );
            }),
            makeTextButton("left\ntop", () {
              YYAlertDialogWithGravity(
                width: 250.0,
                gravity: Gravity.leftTop,
              );
            }),
            makeTextButton("right\nbottom", () {
              YYAlertDialogWithGravity(
                width: 250.0,
                gravity: Gravity.rightBottom,
              );
            }),
            makeTextButton("right\ntop", () {
              YYAlertDialogWithGravity(
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
                width: 250.0,
                doubleButtonGravity: Gravity.left,
              );
            }),
            makeTextButton("right", () {
              YYAlertDialogWithGravity(
                width: 250.0,
                doubleButtonGravity: Gravity.right,
              );
            }),
            makeTextButton("center", () {
              YYAlertDialogWithGravity(
                width: 250.0,
                doubleButtonGravity: Gravity.center,
              );
            }),
            makeTextButton("space\nEvenly", () {
              YYAlertDialogWithGravity(
                width: 250.0,
                doubleButtonGravity: Gravity.spaceEvenly,
              );
            }),
          ],
        ),
        Text("5、dialog animation"),
        Row(
          children: <Widget>[
            makeTextButton("scaleIn", () {
              YYAlertDialogWithScaleIn();
            }),
            makeTextButton("fadeIn", () {
              YYAlertDialogWithFadeIn();
            }),
            makeTextButton("rotateIn", () {
              YYAlertDialogWithRotateIn();
            }),
            makeTextButton("customIn", () {
              YYAlertDialogWithCustomIn();
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
        Text("1、debug"),
        Row(
          children: <Widget>[
            makeTextButton("fix dismiss\nbug", () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Scaffold(
                          appBar: AppBar(
                            title: Text("fix dismiss bug"),
                          ),
                          body: Column(
                            children: <Widget>[
                              makeTextButton("show", () {
                                yyDialog = YYAlertDialogBody();
                              }),
                              makeTextButton("dismiss", () {
                                yyDialog?.dismiss();
                              }),
                            ],
                          ),
                        )),
              );
            }),
            makeTextButton("fix textfield", () {
              YYFixTextFieldDialog();
            }),
          ],
        ),
      ],
    ),
  );
}

Widget makeTextButton(title, Function() function) {
  return SizedBox(
    width: 65.0,
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
