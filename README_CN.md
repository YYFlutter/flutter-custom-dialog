# ✨ flutter_custom_dialog

[![pub package](https://img.shields.io/pub/v/flutter_custom_dialog.svg)](https://pub.dev/packages/flutter_custom_dialog)

对全局弹窗的功能封装，用语义化的方式对弹窗内部的内容进行填充，目前提供的功能

1. 支持少数语义化组件的方法，填充弹窗内部的组件内容
2. 支持自定义语义化组件的方法，供开发者自由填充弹窗内部的组件内容
3. 支持设置弹窗背景色、前景色、位置、动画、点击外部消失等功能，具体看下文
4. 支持无Context调用弹窗，具体看下文

## 🎖 Installing

**1、install**

```yaml
dependencies:
  flutter_custom_dialog: ^1.3.0
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
      notice
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/10.png" width="150px">
      <br />
      bottom sheet
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://github.com/YYFlutter/flutter-custom-dialog/raw/master/image/png/8.png" width="150px">
      <br />
      pop menu
      <br />
      ✅ 支持自定义位置
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
      ✅ 支持自定义动画
    </td>
  </tr>
</table>

## ⚡ Dialog Property

弹窗的属性设置可以通过成员变量的方法去调用，具体详见下表

```dart
YYDialog YYNoticeDialog() {
  return YYDialog().build()
    ..width = 120
    ..height = 110
    ..backgroundColor = Colors.black.withOpacity(0.8)
    ..borderRadius = 10.0
    ..showCallBack = () {
      print("showCallBack invoke");
    }
    ..dismissCallBack = () {
      print("dismissCallBack invoke");
    }
    ..widget(Padding(
      padding: EdgeInsets.only(top: 21),
      child: Image.asset(
        'images/success.png',
        width: 38,
        height: 38,
      ),
    ))
    ..widget(Padding(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        "Success",
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    ))
    ..animatedFunc = (child, animation) {
      return ScaleTransition(
        child: child,
        scale: Tween(begin: 0.0, end: 1.0).animate(animation),
      );
    }
    ..show();
}
```

支持的属性

property|description|default
--|--|--|
width|弹窗宽度|0
height|弹窗高度|自适应组件高度
duration|弹窗动画出现的时间|250毫秒
gravity|弹窗出现的位置|居中
gravityAnimationEnable|弹窗出现的位置带有的默认动画是否可用|false
margin|弹窗的外边距|EdgeInsets.all(0.0)
barrierColor|弹窗外的背景色|30%黑色
decoration|弹窗内的装饰|null
backgroundColor|弹窗内的背景色|白色
borderRadius|弹窗圆角|0.0
constraints|弹窗约束|无
animatedFunc|弹窗出现的动画|从中间出现
showCallBack|弹窗展示的回调|无
dismissCallBack|弹窗消失的回调|无
barrierDismissible|是否点击弹出外部消失|true
useRootNavigator|是否使用根导航|true

* 设置完gravity后，若需要动画则设置gravityAnimationEnable = true
* 若设置decoration属性，则backgroundColor和borderRadius不生效，他们是互斥关系

支持的方法

method|description
--|--|
show[x,y]|显示弹窗
dismiss|隐藏弹窗
isShowing|弹窗是否在展示

## ⚡ Semantic Widget

弹窗内部的组件内容提前通过语义化的函数封装好常用的组件，以便快速构建出弹窗，具体见下表

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

支持的语义化组件

method|description
--|--|
text|文本控件
doubleButton|双按钮控件
listViewOfListTile|列表Tile组件
listViewOfRadioButton|列表按钮组件
divider|分割线组件
widget|自定义语义化组件

## ⚡ Custom Widget

自定义弹窗内部组件内容

* 由于当前已有的语义化组件只是辅助快速搭建UI，在实际项目开发中远远不能满足需求
* 所以提供了自定义语义化组件的插入，由开发者自行将组件加入到弹窗内

> 通过`widget()`将组件插入弹窗

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

## ⚡ 无Context调用

* 应用场景：在网络请求回来后，在回调中是无Context可以引用，这时候就需要预先初始化Context，后续就可以不需要Context调用弹窗

**1、init**

在未弹窗之前先调用静态方法`YYDialog.init(context);`

```dart
class AppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    //1、初始化context
    YYDialog.init(context);
    //2、后续使用可以不需要context
    ......
  }
}
```

**2、use**

直接使用`YYDialog`，注意必须要调用`build()`

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

## 🔥🔥 注意

**1、dismiss**

* 请勿擅自使用`Navigator.pop(context)`让弹窗消失，否则会关掉自己的页面
* YYDialog内部已经解决了此问题，调用内部提供的`dismiss()`即可

```dart
var yyDialog = YYDialog();
yyDialog?.dismiss();
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
