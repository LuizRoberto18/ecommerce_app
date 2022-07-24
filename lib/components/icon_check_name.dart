import 'package:flutter/material.dart';

class IconCheckName extends StatefulWidget {
  IconCheckName({Key? key}) : super(key: key);

  @override
  State<IconCheckName> createState() => _IconCheckNameState();
}

class _IconCheckNameState extends State<IconCheckName> {
  var _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  bool bCheckName = false;
  @override
  Widget build(BuildContext context) {
    if (_formKey.currentState == null) {
      return Container();
    } else if (bCheckName && nameController.text.isNotEmpty) {
      return Icon(
        Icons.check,
        color: Colors.green,
      );
    } else if (!bCheckName) {
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
