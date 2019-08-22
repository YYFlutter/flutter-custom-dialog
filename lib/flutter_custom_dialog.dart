import 'package:flutter/material.dart';

class YYDialog {
  List<Widget> widgetList = [];
  BuildContext context;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  double width;
  double height;
  BoxDecoration decoration;
  BoxConstraints constraints;

  YYDialog({this.context}) {
//    this.width = MediaQuery.of(context).size.width * .8;
//    this.height = MediaQuery.of(context).size.height * .3;
  }

  YYDialog build() {
    print('build');
    return this;
  }

  next() {
    print('next');
    Size size = MediaQuery.of(context).size;
    CustomDialog(
      context: context,
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        children: <Widget>[
          Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: decoration ?? BoxDecoration(
                color: Colors.white,
              ),
              // 限制container大小
              constraints: constraints ?? BoxConstraints(
//                minHeight: size.height * .3,
//                minWidth: size.width * .8,
//                maxHeight: size.height * .5,
                maxWidth: size.width * .8,
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

  show() {
    print('show');
    this.next();
  }

  YYDialog widget(Widget child) {
    this.widgetList.add(child);
    return this;
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
