import 'package:flutter/material.dart';

// Big Button Primary
class ButtonBigPrimary extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onPressed;

  ButtonBigPrimary({@required this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonTheme(
        minWidth: 360,
        height: 56,
        buttonColor: Colors.lightGreen,
        disabledColor: Colors.white70,
        hoverColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(28.0),
        ),
        child: RaisedButton(
          child: child,
          onPressed: onPressed,
        ),
      ),
    );
  }
}

