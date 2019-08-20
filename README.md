# flutter_custom_dialog
Custom Dialog.

## Getting Started

+ add dependencies
```
  ...
  flutter_custom_dialog:
    # path: ../../package/yyf-custom-dialog
    git:
      url: git://github.com/YYFlutter/flutter-custom-dialog.git
  ...
``` 

+ import package

```dart
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart' show YYDialog;
```

+ use dialog
```
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
```

