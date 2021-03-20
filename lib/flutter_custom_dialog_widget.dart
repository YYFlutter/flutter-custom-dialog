import 'package:flutter/material.dart';

import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
export 'package:flutter_custom_dialog/flutter_custom_dialog_widget.dart';

class YYRadioListTile extends StatefulWidget {
  YYRadioListTile({
    Key? key,
    required this.items,
    this.intialValue,
    this.color,
    this.activeColor,
    this.onChanged,
  })  : assert(items != null),
        super(key: key);

  final List<RadioItem> items;
  final Color? color;
  final Color? activeColor;
  final intialValue;
  final Function(int?)? onChanged;

  @override
  State<StatefulWidget> createState() {
    return YYRadioListTileState();
  }
}

class YYRadioListTileState extends State<YYRadioListTile> {
  int? groupId = -1;

  void intialSelectedItem() {
    //intialValue:
    //The button initializes the position.
    //If it is not filled, it is not selected.
    if (groupId == -1) {
      groupId = widget.intialValue ?? -1;
    }
  }

  @override
  Widget build(BuildContext context) {
    intialSelectedItem();

    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      shrinkWrap: true,
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: widget.color,
          child: RadioListTile(
            title: Text(widget.items[index].text!),
            value: index,
            groupValue: groupId,
            activeColor: widget.activeColor,
            onChanged: (int? value) {
              setState(() {
                widget.onChanged!(value);
                groupId = value;
              });
            },
          ),
        );
      },
    );
  }
}
