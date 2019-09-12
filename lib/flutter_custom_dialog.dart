import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/components/bean/dialog_item.dart';

import 'components/bean/dialog_gravity.dart';
import 'flutter_custom_dialog_widget.dart';

class YYDialog {
  //================================弹窗属性======================================
  List<Widget> widgetList = []; //弹窗内部所有组件
  BuildContext context; //弹窗上下文

  double width; //弹窗宽度
  double height; //弹窗高度
  Duration duration = Duration(milliseconds: 250); //弹窗动画出现的时间
  Gravity gravity = Gravity.center; //弹窗出现的位置
  Color barrierColor = Colors.black.withOpacity(.3); //弹窗外的背景色
  Color backgroundColor = Colors.white; //弹窗内的背景色
  double borderRadius = 0.0; //弹窗圆角
  BoxConstraints constraints; //弹窗约束
  AnimatedWidget animatedWidget; //弹窗出现的动画
  bool barrierDismissible = true; //是否点击弹出外部消失
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
    height,
    isClickAutoDismiss = true, //点击按钮后自动关闭
    withDivider = false, //中间分割线
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
      SizedBox(
        height: height ?? 45.0,
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
            Visibility(
              visible: withDivider,
              child: VerticalDivider(),
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
    print("YYDialog ==> listViewOfRadioButton()");
    Size size = MediaQuery.of(context).size;
    return this.widget(
      Container(
        height: height,
        constraints: BoxConstraints(
          minHeight: size.height * .1,
          minWidth: size.width * .1,
          maxHeight: size.height * .5,
        ),
        child: YYRadioListTile(
          items: items,
          activeColor: activeColor,
          onChanged: onClickItemListener,
        ),
      ),
    );
  }

  YYDialog circularProgress(
      {padding, backgroundColor, valueColor, strokeWidth}) {
    return this.widget(Padding(
      padding: padding,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth ?? 4.0,
        backgroundColor: backgroundColor,
        valueColor: AlwaysStoppedAnimation<Color>(valueColor),
      ),
    ));
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
    print("YYDialog ==> show()");
    var mainAxisAlignment = getColumnMainAxisAlignment(gravity);
    var crossAxisAlignment = getColumnCrossAxisAlignment(gravity);
    Size size = MediaQuery.of(context).size;
    CustomDialog(
      gravity: gravity,
      context: context,
      barrierColor: barrierColor,
      animatedWidget: animatedWidget,
      barrierDismissible: barrierDismissible,
      duration: duration,
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
        mainAxisAlignment = MainAxisAlignment.center;
        break;
    }
    return mainAxisAlignment;
  }
}

class CustomDialog {
  BuildContext _context;
  Widget _child;
  Duration _duration;
  Color _barrierColor;
  RouteTransitionsBuilder _transitionsBuilder;
  bool _barrierDismissible;
  Gravity _gravity;
  AnimatedWidget _animatedWidget;

  CustomDialog({
    @required Widget child,
    @required BuildContext context,
    Duration duration,
    Color barrierColor,
    RouteTransitionsBuilder transitionsBuilder,
    Gravity gravity,
    AnimatedWidget animatedWidget,
    bool barrierDismissible,
  })  : _child = child,
        _context = context,
        _gravity = gravity,
        _duration = duration,
        _barrierColor = barrierColor,
        _transitionsBuilder = transitionsBuilder,
        _barrierDismissible = barrierDismissible {
    this.show();
  }

  show() {
    showGeneralDialog(
      context: _context,
      barrierColor: _barrierColor ?? Colors.black.withOpacity(.3),
      barrierDismissible: _barrierDismissible ?? true,
      barrierLabel: "",
      transitionDuration: _duration ?? Duration(milliseconds: 250),
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

    return _animatedWidget ??
        SlideTransition(
          position: custom,
          child: child,
        );
  }
}
