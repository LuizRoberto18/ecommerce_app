import 'package:flutter/material.dart';

class IconCheck extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  final TextEditingController controller;
  bool bCheck = false;
  IconCheck({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_formKey.currentState == null) {
      return Container();
    } else if (bCheck && controller.text.isNotEmpty) {
      return Icon(
        Icons.check,
        color: Colors.green,
      );
    } else if (!bCheck) {
      return Icon(
        Icons.clear,
        color: Colors.red,
      );
    } else {
      return Container();
    }
    ;
  }
}
