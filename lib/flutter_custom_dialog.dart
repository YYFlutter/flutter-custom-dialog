import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/components/bean/dialog_item.dart';

import 'components/bean/dialog_gravity.dart';

class YYDialog {
  //================================弹窗属性======================================
  List<Widget> widgetList = [];
  BuildContext context;
  double width; //弹窗宽度
  double height; //弹窗高度
  Gravity gravity = Gravity.center; //弹窗位置
  Color backgroundColor = Colors.white; //弹窗背景
  double borderRadius = 0.0; //弹窗圆角
  BoxConstraints constraints; //弹窗约束
  //============================================================================

  YYDialog build(context) {
    this.context = context;
    return this;
  }

  YYDialog widget(Widget child) {
    this.widgetList.add(child);
    return this;
  }

  YYDialog text({padding, text, color, fontSize, alignment, fontWeight}) {
    return this.widget(
      Padding(
        padding: padding ?? EdgeInsets.all(0.0),
        child: Align(
          alignment: alignment ?? Alignment.centerLeft,
          child: Text(
            text ?? "",
            style: TextStyle(
              color: color ?? Colors.black,
              fontSize: fontSize ?? 14.0,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }

  YYDialog doubleButton({
    padding,
    gravity,
    isClickAutoDismiss = true, //点击按钮后自动关闭
    text1,
    color1,
    fontSize1,
    fontWeight1,
    VoidCallback onTap1,
    text2,
    color2,
    fontSize2,
    fontWeight2,
    onTap2,
  }) {
    return this.widget(
      Padding(
        padding: padding ?? EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: getRowMainAxisAlignment(gravity),
          children: <Widget>[
            FlatButton(
              onPressed: () {
                if (onTap1 != null) onTap1();
                if (isClickAutoDismiss) {
                  dismiss();
                }
              },
              padding: EdgeInsets.all(0.0),
              child: Text(
                text1 ?? "",
                style: TextStyle(
                  color: color1 ?? null,
                  fontSize: fontSize1 ?? null,
                  fontWeight: fontWeight1 ?? null,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                if (onTap2 != null) onTap2();
                if (isClickAutoDismiss) {
                  dismiss();
                }
              },
              padding: EdgeInsets.all(0.0),
              child: Text(
                text2 ?? "",
                style: TextStyle(
                  color: color2 ?? Colors.black,
                  fontSize: fontSize2 ?? 14.0,
                  fontWeight: fontWeight2 ?? null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  YYDialog listViewOfListTile({
    List<ListTileItem> items,
    double height,
    isClickAutoDismiss = true,
    Function(int) onClickItemListener,
  }) {
    return this.widget(
      Container(
        height: height,
        child: ListView.builder(
          padding: EdgeInsets.all(0.0),
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Material(
              color: Colors.white,
              child: InkWell(
                child: ListTile(
                  onTap: () {
                    if (onClickItemListener != null) {
                      onClickItemListener(index);
                    }
                    if (isClickAutoDismiss) {
                      dismiss();
                    }
                  },
                  contentPadding: items[index].padding ?? EdgeInsets.all(0.0),
                  leading: items[index].leading,
                  title: Text(
                    items[index].text ?? "",
                    style: TextStyle(
                      color: items[index].color ?? null,
                      fontSize: items[index].fontSize ?? null,
                      fontWeight: items[index].fontWeight ?? null,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  YYDialog listViewOfRadioButton({
    List<RadioItem> items,
    double height,
    Color activeColor,
    Function(int) onClickItemListener,
  }) {
    var _groupValue = 0;
    return this.widget(
      Container(
        height: height,
        child: ListView.builder(
          padding: EdgeInsets.all(0.0),
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Material(
              color: Colors.white,
              child: InkWell(
                child: ListTile(
                  onTap: () {
                    if (onClickItemListener != null) {
                      onClickItemListener(index);
                    }
                  },
                  contentPadding: items[index].padding ?? EdgeInsets.all(0.0),
                  leading: Radio(
                    value: index,
                    groupValue: _groupValue,
                    onChanged: (int value) {
                      _groupValue = value;
                    },
                    activeColor: activeColor,
                  ),
                  title: Text(
                    items[index].text ?? "",
                    style: TextStyle(
                      color: items[index].color ?? null,
                      fontSize: items[index].fontSize ?? null,
                      fontWeight: items[index].fontWeight ?? null,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  YYDialog divider({color, height}) {
    return this.widget(
      Divider(
        color: color ?? Colors.grey[300],
        height: height ?? 0.1,
      ),
    );
  }

  void show() {
    var mainAxisAlignment = getColumnMainAxisAlignment(gravity);
    var crossAxisAlignment = getColumnCrossAxisAlignment(gravity);

    Size size = MediaQuery.of(context).size;
    CustomDialog(
      gravity: gravity,
      context: context,
      child: Column(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: <Widget>[
          Material(
            type: MaterialType.transparency,
            child: Container(
              padding: EdgeInsets.all(borderRadius / 3.14),
              width: width ?? null,
              height: height ?? null,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                color: backgroundColor,
              ),
              constraints: constraints ??
                  BoxConstraints(
                    minHeight: size.height * .1,
                    minWidth: size.width * .1,
                  ),
              child: Column(
                children: widgetList,
              ),
            ),
          )
        ],
      ),
    );
  }

  void dismiss() {
    Navigator.of(context).pop();
  }

  getColumnMainAxisAlignment(gravity) {
    var mainAxisAlignment = MainAxisAlignment.start;
    switch (gravity) {
      case Gravity.bottom:
        mainAxisAlignment = MainAxisAlignment.end;
        break;
      case Gravity.top:
        mainAxisAlignment = MainAxisAlignment.start;
        break;
      case Gravity.left:
        mainAxisAlignment = MainAxisAlignment.center;
        break;
      case Gravity.right:
        mainAxisAlignment = MainAxisAlignment.center;
        break;
      case Gravity.center:
      default:
        mainAxisAlignment = MainAxisAlignment.center;
        break;
    }
    return mainAxisAlignment;
  }

  getColumnCrossAxisAlignment(gravity) {
    var crossAxisAlignment = CrossAxisAlignment.center;
    switch (gravity) {
      case Gravity.bottom:
        break;
      case Gravity.top:
        break;
      case Gravity.left:
        crossAxisAlignment = CrossAxisAlignment.start;
        break;
      case Gravity.right:
        crossAxisAlignment = CrossAxisAlignment.end;
        break;
      default:
        break;
    }
    return crossAxisAlignment;
  }

  getRowMainAxisAlignment(gravity) {
    var mainAxisAlignment = MainAxisAlignment.start;
    switch (gravity) {
      case Gravity.bottom:
        break;
      case Gravity.top:
        break;
      case Gravity.left:
        mainAxisAlignment = MainAxisAlignment.start;
        break;
      case Gravity.right:
        mainAxisAlignment = MainAxisAlignment.end;
        break;
      case Gravity.center:
      default:
        mainAxisAlignment = MainAxisAlignment.spaceAround;
        break;
    }
    return mainAxisAlignment;
  }
}

class CustomDialog {
  BuildContext _context;
  Widget _child;
  Duration _duration = Duration(milliseconds: 250);
  Color _barrierColor = Colors.black.withOpacity(.3);
  RouteTransitionsBuilder _transitionsBuilder;
  bool _barrierDismissible = true;
  Gravity _gravity = Gravity.center;

  CustomDialog({
    @required Widget child,
    @required BuildContext context,
    Duration duration,
    Color barrierColor,
    RouteTransitionsBuilder transitionsBuilder,
    Gravity gravity,
  })  : _child = child,
        _context = context,
        _gravity = gravity {
    if (duration != null) {
      _duration = duration;
    }
    if (barrierColor != null) {
      _barrierColor = barrierColor;
    }
    if (transitionsBuilder != null) {
      _transitionsBuilder = transitionsBuilder;
    }
    this.show();
  }

  show() {
    showGeneralDialog(
      context: _context,
      barrierColor: _barrierColor,
      barrierDismissible: _barrierDismissible,
      barrierLabel: "",
      transitionDuration: _duration,
      transitionBuilder: _transitionsBuilder ?? _buildMaterialDialogTransitions,
      pageBuilder: (BuildContext buildContext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        print('show buildContext => #$buildContext');
        return Builder(
          builder: (BuildContext context) {
            print('show context => #$context');
            return _child;
          },
        );
      },
    );
  }

  Widget _buildMaterialDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    Animation<Offset> custom;
    switch (_gravity) {
      case Gravity.top:
        custom = Tween<Offset>(
          begin: Offset(0.0, -1.0),
          end: Offset(0.0, 0.0),
        ).animate(animation);
        break;
      case Gravity.left:
        custom = Tween<Offset>(
          begin: Offset(-1.0, 0.0),
          end: Offset(0.0, 0.0),
        ).animate(animation);
        break;
      case Gravity.right:
        custom = Tween<Offset>(
          begin: Offset(1.0, 0.0),
          end: Offset(0.0, 0.0),
        ).animate(animation);
        break;
      case Gravity.bottom:
        custom = Tween<Offset>(
          begin: Offset(0.0, 1.0),
          end: Offset(0.0, 0.0),
        ).animate(animation);
        break;
      case Gravity.center:
      default:
        custom = Tween<Offset>(
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 0.0),
        ).animate(animation);
        break;
    }

    return SlideTransition(
      position: custom,
      child: child,
    );
  }
}
