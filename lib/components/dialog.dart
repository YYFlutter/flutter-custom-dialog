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
