import 'package:flutter/material.dart';

class IconCheckPassword extends StatefulWidget {
  const IconCheckPassword({Key? key}) : super(key: key);

  @override
  State<IconCheckPassword> createState() => _IconCheckPasswordState();
}

class _IconCheckPasswordState extends State<IconCheckPassword> {
  var _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  bool bCheckPassword = false;

  @override
  Widget build(BuildContext context) {
    if (_formKey.currentState == null) {
      return Container();
    } else if (bCheckPassword && passwordController.text.isNotEmpty) {
      return Icon(
        Icons.check,
        color: Colors.green,
      );
    } else if (!bCheckPassword) {
      return Icon(
        Icons.clear,
        color: Colors.red,
      );
    } else {
      return Container();
    }
  }
}
