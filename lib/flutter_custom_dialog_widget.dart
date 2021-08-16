import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
export 'package:flutter_custom_dialog/flutter_custom_dialog_widget.dart';

class YYRadioListTile extends StatefulWidget {
  YYRadioListTile({
    Key? key,
    this.items,
    this.intialValue,
    this.color,
    this.activeColor,
    this.onChanged,
  })  : assert(items != null),
        super(key: key);

  final List<RadioItem>? items;
  final Color? color;
  final Color? activeColor;
  final intialValue;
  final Function(int)? onChanged;

  @override
  State<StatefulWidget> createState() {
    return YYRadioListTileState();
  }
}

class YYRadioListTileState extends State<YYRadioListTile> {
  var groupId = -1;

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
      itemCount: widget.items?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: widget.color,
          child: RadioListTile(
            title: Text(
              widget.items?[index].text ?? "",
              style: TextStyle(
                  fontSize: widget.items?[index].fontSize ?? 14,
                  fontWeight:
                      widget.items?[index].fontWeight ?? FontWeight.normal,
                  color: widget.items?[index].color ?? Colors.black),
            ),
            value: index,
            groupValue: groupId,
            activeColor: widget.activeColor,
            onChanged: (int? value) {
              setState(() {
                if (widget.onChanged != null) {
                  widget.onChanged!(value ?? 0);
                }
                groupId = value ?? -1;
              });
            },
          ),
        );
      },
    );
  }
}
