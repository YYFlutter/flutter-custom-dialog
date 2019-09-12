import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/components/bean/dialog_gravity.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

YYDialog YYAlertDialogBody(BuildContext context) {
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
      gravity: Gravity.right,
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

YYDialog YYAlertDialogHeadAndBody(BuildContext context) {
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
      padding: EdgeInsets.only(top: 20.0),
      gravity: Gravity.right,
      text1: "DISAGREE",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      onTap1: () {
        print("AAAAAAAAA1");
      },
      text2: "AGREE",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
      onTap2: () {
        print("BBBBBBBB1");
      },
    )
    ..show();
}

YYDialog YYAlertDialogWithDivider(BuildContext context) {
  return YYDialog().build(context)
    ..width = 220
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(25.0),
      alignment: Alignment.center,
      text: "确定要退出登录吗?",
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    )
    ..divider()
    ..doubleButton(
      padding: EdgeInsets.only(top: 10.0),
      gravity: Gravity.center,
      withDivider: true,
      text1: "取消",
      color1: Colors.redAccent,
      fontSize1: 14.0,
      fontWeight1: FontWeight.bold,
      text2: "确定",
      color2: Colors.redAccent,
      fontSize2: 14.0,
      fontWeight2: FontWeight.bold,
    )
    ..show();
}

YYDialog YYAlertDialogWithDuration(BuildContext context) {
  return YYDialog().build(context)
    ..width = 240
    ..borderRadius = 4.0
    ..gravity = Gravity.left
    ..duration = Duration(seconds: 1)
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
      gravity: Gravity.center,
      text1: "ACTION 1",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "ACTION 2",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialogWithbarrierColor(BuildContext context) {
  return YYDialog().build(context)
    ..width = 240
    ..borderRadius = 4.0
    ..barrierColor = Colors.redAccent
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
      gravity: Gravity.center,
      text1: "ACTION 1",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "ACTION 2",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialogWithBackgroundColor(BuildContext context) {
  return YYDialog().build(context)
    ..width = 240
    ..borderRadius = 4.0
    ..backgroundColor = Colors.yellow
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
      gravity: Gravity.center,
      text1: "ACTION 1",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "ACTION 2",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialogWithBarrierDismiss(BuildContext context) {
  return YYDialog().build(context)
    ..width = 240
    ..borderRadius = 4.0
    ..barrierDismissible = false
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
      gravity: Gravity.center,
      text1: "ACTION 1",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "ACTION 2",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}

YYDialog YYAlertDialogWithGravity(
    {context, width, gravity, doubleButtonGravity}) {
  return YYDialog().build(context)
    ..width = width
    ..gravity = gravity
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
      padding: EdgeInsets.only(top: 20.0),
      gravity: doubleButtonGravity ?? Gravity.right,
      text1: "DISAGREE",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      text2: "AGREE",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
    )
    ..show();
}
