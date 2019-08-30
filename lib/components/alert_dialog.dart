import 'package:flutter/material.dart';

import '../flutter_custom_dialog.dart';
import 'bean/dialog_gravity.dart';

YYDialog YYAlertDialog1(BuildContext context) {
  return YYDialog().build(context)
    ..width = 240
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Dialog header",
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    )
    ..text(
      padding: EdgeInsets.only(left: 18.0, right: 18.0),
      text: "Dialog body text",
      color: Colors.grey[500],
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 24.0),
      mainAxisAlignment: MainAxisAlignment.end,
      text1: "ACTION 1",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      onTap1: () {
        print("AAAAAAAAA1");
      },
      text2: "ACTION 2",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
      onTap2: () {
        print("BBBBBBBB1");
      },
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

YYDialog YYAlertDialog3(BuildContext context) {
  return YYDialog().build(context)
    ..width = 260
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Use location service?",
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    )
    ..text(
      padding: EdgeInsets.only(left: 18.0, right: 18.0),
      text:
          "Let us help apps determine location. This means sending anonymous location data to us, even when no apps are running.",
      color: Colors.grey[500],
      fontSize: 15.0,
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 24.0),
      mainAxisAlignment: MainAxisAlignment.end,
      text1: "DISAGREE",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "AGREE",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialog4(BuildContext context) {
  return YYDialog().build(context)
    ..gravity = Gravity.bottom
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Use location service?",
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    )
    ..text(
      padding: EdgeInsets.only(left: 18.0, right: 18.0),
      text:
          "Let us help apps determine location. This means sending anonymous location data to us, even when no apps are running.",
      color: Colors.grey[500],
      fontSize: 15.0,
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 24.0),
      mainAxisAlignment: MainAxisAlignment.end,
      text1: "DISAGREE",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "AGREE",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialog5(BuildContext context) {
  return YYDialog().build(context)
    ..gravity = Gravity.top
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Use location service?",
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    )
    ..text(
      padding: EdgeInsets.only(left: 18.0, right: 18.0),
      text:
          "Let us help apps determine location. This means sending anonymous location data to us, even when no apps are running.",
      color: Colors.grey[500],
      fontSize: 15.0,
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 24.0),
      mainAxisAlignment: MainAxisAlignment.end,
      text1: "DISAGREE",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "AGREE",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialog6(BuildContext context) {
  return YYDialog().build(context)
    ..gravity = Gravity.left
    ..width = 200
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Use location service?",
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    )
    ..text(
      padding: EdgeInsets.only(left: 18.0, right: 18.0),
      text:
          "Let us help apps determine location. This means sending anonymous location data to us, even when no apps are running.",
      color: Colors.grey[500],
      fontSize: 15.0,
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 24.0),
      mainAxisAlignment: MainAxisAlignment.end,
      text1: "DISAGREE",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "AGREE",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialog7(BuildContext context) {
  return YYDialog().build(context)
    ..gravity = Gravity.right
    ..width = 200
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(18.0),
      text: "Use location service?",
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    )
    ..text(
      padding: EdgeInsets.only(left: 18.0, right: 18.0),
      text:
          "Let us help apps determine location. This means sending anonymous location data to us, even when no apps are running.",
      color: Colors.grey[500],
      fontSize: 15.0,
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 24.0),
      mainAxisAlignment: MainAxisAlignment.end,
      text1: "DISAGREE",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "AGREE",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}
