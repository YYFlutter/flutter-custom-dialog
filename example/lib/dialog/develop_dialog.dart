import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

YYDialog YYFixTextFieldDialog() {
  return YYDialog().build()
    ..width = 120
    ..height = 110
    ..backgroundColor = Colors.white
    ..borderRadius = 10.0
    ..gravity = Gravity.bottom
    ..widget(
      Padding(
        padding: EdgeInsets.all(24),
        child: TextField(),
      ),
    )
    ..show();
}
