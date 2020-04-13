import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

var listTileItems = [
  ListTileItem(
    padding: EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 6.0),
    leading: ClipOval(
      child: Image.network(
        "https://imgavater.ui.cn/avatar/3/3/4/9/1269433.jpg?imageMogr2/auto-orient/crop/!1219x1219a12a0/thumbnail/148x148",
        height: 50,
        width: 50,
        fit: BoxFit.cover,
      ),
    ),
    text: "user01@gmail.com",
    color: Colors.grey,
    fontSize: 16.0,
  ),
  ListTileItem(
    padding: EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 6.0),
    leading: ClipOval(
      child: Image.network(
        "https://imgavater.ui.cn/avatar/1/4/7/8/958741.jpg?imageMogr2/auto-orient/crop/!563x563a377a167/thumbnail/60x60",
        height: 50,
        width: 50,
        fit: BoxFit.cover,
      ),
    ),
    text: "user02@gmail.com",
    color: Colors.grey,
    fontSize: 16.0,
  ),
  ListTileItem(
    padding: EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 6.0),
    leading: ClipOval(
      child: Image.network(
        "https://imgavater.ui.cn/avatar/6/0/7/5/165706.png?imageMogr2/auto-orient/crop/!798x798a109a100/thumbnail/148x148",
        height: 50,
        width: 50,
        fit: BoxFit.cover,
      ),
    ),
    text: "user03@gmail.com",
    color: Colors.grey,
    fontSize: 16.0,
  ),
  ListTileItem(
    padding: EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 6.0),
    leading: ClipOval(
        child: Container(
      width: 50,
      height: 50,
      child: Icon(Icons.add, size: 30, color: Colors.white),
      color: Colors.grey[500],
    )),
    text: "Add account",
    color: Colors.grey,
    fontSize: 16.0,
  ),
];

var radioItems = [
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "None",
    color: Colors.black,
    fontSize: 16.0,
  ),
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "Callisto",
    color: Colors.black,
    fontSize: 16.0,
  ),
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "Ganymede",
    color: Colors.black,
    fontSize: 16.0,
  ),
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "Luna",
    color: Colors.black,
    fontSize: 16.0,
  ),
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "Oberon",
    color: Colors.black,
    fontSize: 16.0,
  ),
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "Phobos",
    color: Colors.black,
    fontSize: 16.0,
  ),
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "Dione",
    color: Colors.black,
    fontSize: 16.0,
  ),
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "James",
    color: Colors.black,
    fontSize: 16.0,
  ),
  RadioItem(
    padding: EdgeInsets.only(left: 6.0),
    text: "Lina",
    color: Colors.black,
    fontSize: 16.0,
  ),
];

YYDialog YYListViewDialogListTile() {
  return YYDialog().build()
    ..width = 280
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 12.0),
      text: "Set backup account",
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    )
    ..listViewOfListTile(
        items: listTileItems,
        onClickItemListener: (index) {
          var listTileItem = listTileItems[index];
          print(listTileItem.text + " is on click");
        })
    ..show();
}

YYDialog YYListViewDialogListRadio() {
  return YYDialog().build()
    ..width = 280
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.fromLTRB(18.0, 22.0, 18.0, 18.0),
      text: "Phone ringtone",
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    )
    ..divider()
    ..listViewOfRadioButton(
        items: radioItems,
        height: 370,
        intialValue: 2,
        color: Colors.white,
        activeColor: Colors.deepPurpleAccent,
        onClickItemListener: (index) {
          var radioItem = radioItems[index];
          print(radioItem.text + " is on click");
        })
    ..divider()
    ..doubleButton(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      gravity: Gravity.right,
      text1: "CANCEL",
      color1: Colors.deepPurpleAccent,
      fontSize1: 14.0,
      fontWeight1: FontWeight.bold,
      text2: "OK",
      color2: Colors.deepPurpleAccent,
      fontSize2: 14.0,
      fontWeight2: FontWeight.bold,
    )
    ..show();
}
