import 'package:flutter/material.dart';

import '../flutter_custom_dialog.dart';

YYDialog YYAlertDialog(BuildContext context) {
  return YYDialog().build(context)
    ..decoration = BoxDecoration(
      color: Colors.red,
    )
    ..mainAxisAlignment = MainAxisAlignment.center
    ..width = 200
    ..height = 100
    ..widget(
      Row(
        children: <Widget>[Text('haha'), Text('bbb')],
      ),
    )
    ..widget(
      Row(
        children: <Widget>[Text('haha'), Text('bbb')],
      ),
    )
    ..show();
}
