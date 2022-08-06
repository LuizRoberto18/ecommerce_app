import 'package:flutter/material.dart';

class ElevatedButtonEdited extends StatelessWidget {
  final Color primaryColor;
  final Color textColor;
  final Widget child;
  final Function() onPressed;
  const ElevatedButtonEdited(
      {Key? key,
      required this.primaryColor,
      required this.textColor,
      required this.child,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: child,
    );
  }
}
