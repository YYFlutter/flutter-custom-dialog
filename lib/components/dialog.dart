import 'package:flutter/material.dart';

import '../flutter_custom_dialog.dart';

YYDialog YYAlertDialog(BuildContext context) {
  return YYDialog(context: context).build()
    ..decoration = BoxDecoration(
      color: Colors.red,
    )
    ..constraints = null
    ..mainAxisAlignment = MainAxisAlignment.end
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
