import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Type { number, clear, clearall, none, operations }

class CustomButton extends FlatButton {
  final Type type;

  CustomButton(
      {Key key,
      @required VoidCallback onPressed,
      @required Widget child,
      Clip clipBehavior,
      bool autofocus = false,
      Color color,
      this.type})
      : assert(autofocus != null),
        super(
          clipBehavior: clipBehavior,
          autofocus: autofocus,
          key: key,
          color: color,
          onPressed: onPressed,
          child: child,
        ) ;
}
