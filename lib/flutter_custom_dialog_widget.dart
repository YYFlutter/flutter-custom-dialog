import 'package:flutter/material.dart';

import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
export 'package:flutter_custom_dialog/flutter_custom_dialog_widget.dart';

class YYRadioListTile extends StatefulWidget {
  YYRadioListTile({
    Key key,
    this.items,
    this.activeColor,
    this.onChanged,
  })  : assert(items != null),
        super(key: key);

  List<RadioItem> items;
  Color activeColor;
  Function(int) onChanged;

  @override
  State<StatefulWidget> createState() {
    return YYRadioListTileState();
  }
}

class YYRadioListTileState extends State<YYRadioListTile> {
  var groupId = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      shrinkWrap: true,
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: Colors.white,
          child: RadioListTile(
            title: Text(widget.items[index].text),
            value: index,
            groupValue: groupId,
            activeColor: widget.activeColor,
            onChanged: (int value) {
              setState(() {
                widget.onChanged(value);
                groupId = value;
              });
            },
          ),
        );
      },
    );
  }
}
