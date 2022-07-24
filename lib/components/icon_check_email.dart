import 'package:flutter/material.dart';

class IconCheckEmail extends StatefulWidget {
  const IconCheckEmail({Key? key}) : super(key: key);

  @override
  State<IconCheckEmail> createState() => _IconCheckEmailState();
}

class _IconCheckEmailState extends State<IconCheckEmail> {
  var _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  bool bCheckEmail = false;

  @override
  Widget build(BuildContext context) {
    if (_formKey.currentState == null) {
      return Container();
    } else if (bCheckEmail && emailController.text.isNotEmpty) {
      return Icon(
        Icons.check,
        color: Colors.green,
      );
    } else if (!bCheckEmail) {
      return Icon(
        Icons.clear,
        color: Colors.red,
      );
    } else {
      return Container();
    }
  }
}
