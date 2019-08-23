import 'package:flutter/material.dart';

class YYDialog {
  List<Widget> widgetList = [];
  BuildContext context;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  double width;
  double height;
  BoxDecoration decoration;
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

  YYDialog doubleButton({padding, text, color, fontSize}) {
    return this.widget(
      Padding(
        padding: padding ?? EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                text ?? "",
                style: TextStyle(
                  color: color ?? Colors.black,
                  fontSize: fontSize ?? 14.0,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                text ?? "",
                style: TextStyle(
                  color: color ?? Colors.black,
                  fontSize: fontSize ?? 14.0,
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
              decoration: decoration ??
                  BoxDecoration(
                    color: Colors.white,
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
