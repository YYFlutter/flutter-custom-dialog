import 'package:flutter/material.dart';

import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
export 'package:flutter_custom_dialog/flutter_custom_dialog_widget.dart';

class YYRadioListTile extends StatefulWidget {
  YYRadioListTile({
    Key key,
    this.items,
    this.intialValue = 0,
    this.activeColor,
    this.onChanged,
  })  : assert(items != null),
        super(key: key);

  final List<RadioItem> items;
  final Color activeColor;
  final intialValue;
  final Function(int) onChanged;

  @override
  State<StatefulWidget> createState() {
    return YYRadioListTileState();
  }
}

class YYRadioListTileState extends State<YYRadioListTile> {
  var groupId = 0;
  var selectedItem = -1;

  @override
  Widget build(BuildContext context) {
    if (selectedItem == -1) {
      selectedItem = widget.intialValue != null ? widget.intialValue : 0;
    }
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      shrinkWrap: true,
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        var radioItem = widget.items[index];
        return Material(
          color: Colors.white,
          child: RadioListTile(
            title: Text(radioItem.text),
            value: radioItem.value == null ? index : radioItem.value,
            groupValue: selectedItem,
            activeColor: widget.activeColor,
            onChanged: (int value) {
              setState(() {
                selectedItem = value;
              });
              widget.onChanged(value);
            },
          ),
        );
      },
    );
  }
}
