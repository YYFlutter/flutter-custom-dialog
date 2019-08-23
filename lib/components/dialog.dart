import 'package:flutter/material.dart';

import '../flutter_custom_dialog.dart';

YYDialog YYAlertDialog(BuildContext context) {
  return YYDialog().build(context)
    ..width = 240
    ..text(
      padding: EdgeInsets.all(16.0),
      text: "Dialog Header",
      color: Colors.black,
      fontSize: 16.0,
    )
    ..text(
      padding: EdgeInsets.only(left: 16.0),
      text: "Dialog body text",
      color: Colors.grey[500],
    )
    ..doubleButton(
      padding: EdgeInsets.only(top: 12.0),
      text: "ACTION 1",
      color: Colors.deepPurpleAccent,
      fontSize: 14.0,
    )
    ..show();
}
