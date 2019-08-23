import 'package:flutter/material.dart';

class YYDialog {
  List<Widget> widgetList = [];
  BuildContext context;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  double width;
  double height;
  Color backgroundColor = Colors.white;
  double borderRadius = 0.0;
  BoxConstraints constraints;

  YYDialog build(context) {
    this.context = context;
    return this;
  }

  YYDialog widget(Widget child) {
    this.widgetList.add(child);
    return this;
  }

  YYDialog text({padding, text, color, fontSize, alignment}) {
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
            ),
          ),
        ),
      ),
    );
  }

  YYDialog doubleButton({
    padding,
    mainAxisAlignment,
    text1,
    color1,
    fontSize1,
    fontWeight1,
    text2,
    color2,
    fontSize2,
    fontWeight2,
  }) {
    return this.widget(
      Padding(
        padding: padding ?? EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
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
              onPressed: () {},
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

  void show() {
    Size size = MediaQuery.of(context).size;
    CustomDialog(
      context: context,
      child: Column(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: mainAxisAlignment,
        children: <Widget>[
          Material(
            type: MaterialType.transparency,
            child: Container(
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
}

class CustomDialog {
  BuildContext _context;
  Widget _child;
  Duration _duration = Duration(milliseconds: 250);
  Color _barrierColor = Colors.black.withOpacity(.3);
  RouteTransitionsBuilder _transitionsBuilder;
  bool _barrierDismissible = true;

  CustomDialog({
    @required Widget child,
    @required BuildContext context,
    Duration duration,
    Color barrierColor,
    RouteTransitionsBuilder transitionsBuilder,
  })  : _child = child,
        _context = context {
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
//  return FadeTransition(
//    opacity: CurvedAnimation(
//      parent: animation,
//      curve: Curves.easeOut,
//    ),
//    child: child,
//  );
    Animation<Offset> custom = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(animation);
    return SlideTransition(
      position: custom,
      child: child,
    );
  }
}
