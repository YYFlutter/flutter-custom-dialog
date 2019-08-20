library flutter_custom_dialog;
import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart' show YYDialog;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                YYDialog(context: context ).build()
                  ..widget(
                    Row(
                      children: <Widget>[Text('haha'), Text('bbb')],
                    ),
                  )
                  ..widget(
                    Row(
                      children: <Widget>[Text('haha'), Text('bbb')],
                    ),
                  )
                  ..show();
              },
              child: Text('click'),
            )
          ],
        ),
      ),
    );
  }
}
