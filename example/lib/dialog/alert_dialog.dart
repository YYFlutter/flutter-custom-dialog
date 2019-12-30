import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

YYDialog YYAlertDialogBody() {
  return YYDialog().build()
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

YYDialog YYAlertDialogHeadAndBody() {
  return YYDialog().build()
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

YYDialog YYAlertDialogWithDivider() {
  return YYDialog().build()
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
      onTap1: () {
        print("取消");
      },
      text2: "确定",
      color2: Colors.redAccent,
      fontSize2: 14.0,
      fontWeight2: FontWeight.bold,
      onTap2: () {
        print("确定");
      },
    )
    ..show();
}

YYDialog YYAlertDialogWithDuration() {
  return YYDialog().build()
    ..width = 240
    ..borderRadius = 4.0
    ..gravityAnimationEnable = true
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

YYDialog YYAlertDialogWithbarrierColor(Color color) {
  return YYDialog().build()
    ..width = 240
    ..borderRadius = 4.0
    ..barrierColor = color
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

YYDialog YYAlertDialogWithBackgroundColor() {
  return YYDialog().build()
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

YYDialog YYAlertDialogWithBarrierDismiss() {
  return YYDialog().build()
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

YYDialog YYAlertDialogWithGravity({width, gravity, doubleButtonGravity}) {
  return YYDialog().build()
    ..width = width
    ..gravity = gravity
    ..gravityAnimationEnable = true
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

YYDialog YYAlertDialogWithScaleIn() {
  return YYDialog().build()
    ..width = 240
    ..borderRadius = 4.0
    ..duration = Duration(milliseconds: 500)
    ..animatedFunc = (child, animation) {
      return ScaleTransition(
        child: child,
        scale: Tween(begin: 0.0, end: 1.0).animate(animation),
      );
    }
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

YYDialog YYAlertDialogWithFadeIn() {
  return YYDialog().build()
    ..width = 240
    ..borderRadius = 4.0
    ..duration = Duration(milliseconds: 500)
    ..animatedFunc = (child, animation) {
      return FadeTransition(
        child: child,
        opacity: Tween(begin: 0.0, end: 1.0).animate(animation),
      );
    }
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

YYDialog YYAlertDialogWithRotateIn() {
  return YYDialog().build()
    ..width = 240
    ..borderRadius = 4.0
    ..duration = Duration(milliseconds: 500)
    ..animatedFunc = (child, animation) {
      return RotationTransition(
        child: child,
        turns: Tween(begin: 0.0, end: 3.0).animate(animation),
      );
    }
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

YYDialog YYAlertDialogWithCustomIn() {
  return YYDialog().build()
    ..width = 240
    ..borderRadius = 4.0
    ..duration = Duration(milliseconds: 500)
    ..animatedFunc = (child, animation) {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..translate(
            0.0,
            Tween<double>(begin: -50.0, end: 50.0)
                .animate(
                  CurvedAnimation(curve: Interval(0.1, 0.5), parent: animation),
                )
                .value,
          )
          ..scale(
            Tween<double>(begin: 0.5, end: 1.0)
                .animate(
                  CurvedAnimation(curve: Interval(0.5, 0.9), parent: animation),
                )
                .value,
          ),
        child: child,
      );
    }
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

YYDialog YYDialogDemo() {
  return YYDialog().build()
    ..width = 220
    ..height = 500
    ..barrierColor = Colors.black.withOpacity(.3)
    ..animatedFunc = (child, animation) {
      return ScaleTransition(
        child: child,
        scale: Tween(begin: 0.0, end: 1.0).animate(animation),
      );
    }
    ..borderRadius = 4.0
    ..widget(
      Padding(
        padding: EdgeInsets.all(0.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ),
    )
    ..show();
}

YYDialog YYAlertDialogPopMenu() {
  return YYDialog().build()
    ..width = 120
    ..borderRadius = 8.0
    ..gravity = Gravity.rightTop
    ..barrierColor = Colors.transparent
    ..margin = EdgeInsets.only(top: 80, right: 20)
    ..text(
      padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
      text: "Edit Libary",
      fontSize: 16.0,
      color: Colors.grey[700],
    )
    ..text(
      padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
      text: "Read History",
      fontSize: 16.0,
      color: Color(0xFFFF6B2D),
    )
    ..show();
}

YYDialog YYAlertDialogCustomXY() {
  return YYDialog().build()
    ..width = 120
    ..borderRadius = 8.0
    ..barrierColor = Colors.transparent
    ..text(
      padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
      text: "Edit Libary",
      fontSize: 16.0,
      color: Colors.grey[700],
    )
    ..text(
      padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
      text: "Read History",
      fontSize: 16.0,
      color: Color(0xFFFF6B2D),
    )
    ..show(80.0, 100.0);
}

YYDialog YYNoticeDialogCallback() {
  return YYDialog().build()
    ..width = 120
    ..height = 110
    ..backgroundColor = Colors.black.withOpacity(0.8)
    ..borderRadius = 10.0
    ..showCallBack = () {
      print("showCallBack invoke");
    }
    ..dismissCallBack = () {
      print("dismissCallBack invoke");
    }
    ..widget(Padding(
      padding: EdgeInsets.only(top: 21),
      child: Image.asset(
        'images/success.png',
        width: 38,
        height: 38,
      ),
    ))
    ..widget(Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        "Success",
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    ))
    ..animatedFunc = (child, animation) {
      return ScaleTransition(
        child: child,
        scale: Tween(begin: 0.0, end: 1.0).animate(animation),
      );
    }
    ..show();
}
