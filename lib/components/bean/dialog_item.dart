import 'package:flutter/material.dart';

class ListTileItem {
  ListTileItem({
    this.padding,
    this.leading,
    this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  EdgeInsets padding;
  Widget leading;
  String text;
  Color color;
  double fontSize;
  FontWeight fontWeight;
}

class RadioItem {
  RadioItem({
    this.padding,
    this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.onTap,
  });

  EdgeInsets padding;
  String text;
  Color color;
  double fontSize;
  FontWeight fontWeight;
  Function(int) onTap;
}
