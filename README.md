# ✨ flutter_custom_dialog

[![pub package](https://img.shields.io/pub/v/flutter_custom_dialog.svg)](https://pub.dev/packages/flutter_custom_dialog)

**[Lanuage ~~]** [English](README.md) | [中文文档](README_CN.md)

Global dialog function encapsulation, with a semantic way to fill the content inside the dialog, the current function provided

1. Support for a few semantic component methods to populate the component content inside dialog
2. Support for customizing semantic components for developers to freely populate component content inside dialog
3. Support setting dialog background color, foreground color, position, animation, click the external disappear and other functions, see the details below
4. Support no Context call dialog, see below

## 🎖 Installing

**1、install**

```yaml
dependencies:
  flutter_custom_dialog: ^1.0.10
```

**2、import**

```dart
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
```

## 🎖 Example

> dialog_demo

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/1.png" width="150px">
      <br />
      divider
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/2.png" width="150px">
      <br />
      body
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/3.png" width="150px">
      <br />
      head&body
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/4.png" width="150px">
      <br />
      listTile
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/5.png" width="150px">
      <br />
      ListRadio
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/6.png" width="150px">
      <br />
      progress
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/7.png" width="150px">
      <br />
      progress&body
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/9.png" width="150px">
      <br />
      bottom sheet
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/10.png" width="150px">
      <br />
      notice
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/8.png" width="150px">
      <br />
      pop menu
      <br />
      ✅ Support for custom locations
    </td>
  </tr>
</table>

> dialog_gravity

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/1.gif" width="150px">
      <br />
      bottom
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/2.gif" width="150px">
      <br />
      top
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/3.gif" width="150px">
      <br />
      left
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/4.gif" width="150px">
      <br />
      right
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/5.gif" width="150px">
      <br />
      center
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/111.gif" width="150px">
      <br />
      left bottom
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/222.gif" width="150px">
      <br />
      left top
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/333.gif" width="150px">
      <br />
      right bottom
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/444.gif" width="150px">
      <br />
      right top
      <br />
      ✅
    </td>
  </tr>
</table>

> dialog_animation

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/6.gif" width="150px">
      <br />
      scaleIn
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/7.gif" width="150px">
      <br />
      fadeIn
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/8.gif" width="150px">
      <br />
      rotateIn
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/gif/9.gif" width="150px">
      <br />
      customIn
      <br />
      ✅ Support for custom animations
    </td>
  </tr>
</table>

## ⚡ Dialog Property

dialog property Settings can be called through the method of member variables, as detailed in the following table

```dart
YYDialog YYDialogDemo(BuildContext context) {
  return YYDialog().build(context)
    ..width = 220
    ..height = 500
    ..barrierColor = Colors.black.withOpacity(.3)
    ..animatedFunc = (child, animation) {
      return ScaleTransition(
        child: child,
        scale: Tween(begin: 0.0, end: 1.0).animate(animation),
      );
    }
    ..borderRadius = 4.0
    ..show();
}
```

Supported attributes

property|description|default
--|--|--|
width|Dialog width|0
height|Dialog height|Adaptive component height
duration|Dialog animation time|250 ms
gravity|Where the dialog appears|center
gravityAnimationEnable|The dialog appears with the default animation available|false
margin|The margin of a dialog|EdgeInsets.all(0.0)
barrierColor|Dialog barrierColor|30% of black
backgroundColor|Dialog backgroundColor|white
borderRadius|Dialog borderRadius|0.0
constraints|Dialog constraints|no constraints
animatedFunc|Animation of dialog|Emerge from the middle
barrierDismissible|Whether to click to pop up the external disappear|true

Supported method

method|description
--|--|
show[x,y]|show dialog
dismiss|dismiss dialog
isShowing|Is the dialog showing

## ⚡ Semantic Widget

The contents of the components inside the dialog are encapsulated by semantic functions in advance to quickly build the dialog, as shown in the following table

```dart
YYDialog YYAlertDialogWithDivider(BuildContext context) {
  return YYDialog().build(context)
    ..width = 220
    ..borderRadius = 4.0
    ..text(
      padding: EdgeInsets.all(25.0),
      alignment: Alignment.center,
      text: "确定要退出登录吗?",
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    )
    ..divider()
    ..doubleButton(
      padding: EdgeInsets.only(top: 10.0),
      gravity: Gravity.center,
      withDivider: true,
      text1: "取消",
      color1: Colors.redAccent,
      fontSize1: 14.0,
      fontWeight1: FontWeight.bold,
      onTap1: () {
        print("取消");
      },
      text2: "确定",
      color2: Colors.redAccent,
      fontSize2: 14.0,
      fontWeight2: FontWeight.bold,
      onTap2: () {
        print("确定");
      },
    )
    ..show();
}
```

Semantic components supported

method|description
--|--|
text|text widget
doubleButton|two-button widget
listViewOfListTile|listTile widget
listViewOfRadioButton|listRadio widget
divider|divider widget
widget|custom semantic widget

## ⚡ Custom Widget

Customize dialog interior component content

* Since the existing semantic components only assist in the rapid UI construction, they are far from meeting the requirements in actual project development
* So it provides the ability to insert custom semantic components into dialog

> Insert the component into the dialog through 'widget()'

```dart
YYDialog YYDialogDemo(BuildContext context) {
  return YYDialog().build(context)
    ..width = 220
    ..height = 500
    ..widget(
      Padding(
        padding: EdgeInsets.all(0.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ),
    )
    ..show();
}
```

## ⚡ Without the Context to invoke

* Application scenario: after the network request comes back, there is no Context to refer to in the callback, at this time, the Context needs to be initialized in advance, and then the dialog can be called without the Context

**1、init**

Call static methods before show dialog `YYDialog.init(context);`

```dart
class AppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    //1、init context
    YYDialog.init(context);
    //2、Subsequent use may not be required context
    ......
  }
}
```

**2、use**

direct use `YYDialog`，Note that it must be called `build()`

```dart
YYDialog YYAlertDialogBody() {
  return YYDialog().build()
    ..width = 240
    ..text(
      text: "Hello YYDialog",
      color: Colors.grey[700],
    )
    ..show();
}
```

## Bugs/Requests

* If your application has problems, please submit your code and effect to Issue.
* Pull request are also welcome.

## About

* QQ：510402535
* QQ群：798874340
* e-mail：xyj510402535@qq.com
* g-mail：xyj51042535@gmail.com
* Blog：http://blog.csdn.net/qq_30379689
* Github：https://github.com/AndroidHensen

## License

Apache License 2.0
