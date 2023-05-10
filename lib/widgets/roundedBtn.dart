import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String butName;
  final Color? bgColor;
  final TextStyle? textStyle;
  final Icon? icon;
  final VoidCallback? callback;

  RoundedButton({
    required this.butName,
    this.bgColor = Colors.blueAccent,
    this.icon,
    this.textStyle,
    this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: icon != null
            ? Row(
                children: [
                  icon!,
                  SizedBox(width: 6),
                  Text(butName),
                ],
              )
            : Text(butName),
        style: ElevatedButton.styleFrom(
            primary: bgColor,
            shadowColor: bgColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ))));
  }
}
