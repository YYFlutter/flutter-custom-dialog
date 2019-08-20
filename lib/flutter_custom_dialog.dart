import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/components/dialog.dart' show CustomDialog;

class YYDialog {
  List<Widget> widgetList = [];
  BuildContext context;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;

  YYDialog({this.context, MainAxisAlignment mainAxisAlignment}) {
    if (mainAxisAlignment !=null) {
      this.mainAxisAlignment = mainAxisAlignment;
    }
  }

  YYDialog build() {
    print('build');
    return this;
  }

  next() {
    print('next');
    CustomDialog(
      context: context,
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        children: <Widget>[
          Material(
            child: Column(
              children: widgetList,
            ),
          )
        ],
      ),
    );
  }

  show() {
    print('show');
    this.next();
  }

  YYDialog widget(Widget child) {
    this.widgetList.add(child);
    return this;
  }
}
