import 'package:flutter/material.dart';

import '../flutter_custom_dialog.dart';

YYDialog YYAlertDialog(BuildContext context) {
  return YYDialog(context: context).build()
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
