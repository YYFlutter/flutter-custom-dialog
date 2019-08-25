import 'package:flutter/material.dart';

import '../flutter_custom_dialog.dart';

YYDialog YYAlertDialog1(BuildContext context) {
  return YYDialog().build(context)
    ..width = 240
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Dialog Header",
      color: Colors.black,
      fontSize: 16.0,
    )
    ..text(
      padding: EdgeInsets.only(left: 18.0),
      text: "Dialog body text",
      color: Colors.grey[500],
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 24.0),
      mainAxisAlignment: MainAxisAlignment.end,
      text1: "ACTION 1",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "ACTION 2",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialog2(BuildContext context) {
  return YYDialog().build(context)
    ..width = 240
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Discard draft?",
      color: Colors.grey[700],
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 10.0),
      mainAxisAlignment: MainAxisAlignment.end,
      text1: "CANCEL",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      fontWeight1: FontWeight.bold,
      text2: "DISCARD",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
      fontWeight2: FontWeight.bold,
    )
    ..show();
}

YYDialog YYListTileDialog1(BuildContext context) {
  return YYDialog().build(context)
    ..width = 280
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Set backup account",
      color: Colors.black,
      fontSize: 18.0,
    )
    ..listTile(
      padding: EdgeInsets.only(bottom: 12.0, left: 16.0, right: 16.0),
      leading: ClipOval(
        child: Image.network(
          "https://imgavater.ui.cn/avatar/3/3/4/9/1269433.jpg?imageMogr2/auto-orient/crop/!1219x1219a12a0/thumbnail/148x148",
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
      text: "user01@gmail.com",
      color: Colors.grey,
      fontSize: 16.0,
    )
    ..listTile(
      padding: EdgeInsets.only(bottom: 12.0, left: 16.0, right: 16.0),
      leading: ClipOval(
        child: Image.network(
          "https://imgavater.ui.cn/avatar/1/4/7/8/958741.jpg?imageMogr2/auto-orient/crop/!563x563a377a167/thumbnail/60x60",
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
      text: "user02@gmail.com",
      color: Colors.grey,
      fontSize: 16.0,
    )
    ..listTile(
      padding: EdgeInsets.only(bottom: 12.0, left: 16.0, right: 16.0),
      leading: ClipOval(
          child: Container(
        width: 50,
        height: 50,
        child: Icon(Icons.add, size: 30, color: Colors.white),
        color: Colors.grey[500],
      )),
      text: "Add account",
      color: Colors.grey,
      fontSize: 16.0,
    )
    ..show();
}
