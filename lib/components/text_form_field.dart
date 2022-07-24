import 'package:flutter/material.dart';

import '../constants.dart';

class TextFormFieldEdited extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final TextInputType keyboardType;
  final Function(String value) validate;
  const TextFormFieldEdited({
    Key? key,
    required this.controller,
    required this.text,
    required this.validate,
    required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: cModeDarkColorFontTitle),
      cursorColor: cModeDarkColorFontTitle,
      decoration: InputDecoration(
        focusColor: cModeDarkColorFontTitle,
        labelText: text,
        labelStyle: TextStyle(color: cModeDarkColorTextBoxLabel),
        contentPadding: EdgeInsets.all(10.0),
        fillColor: cModeDarkColorFontTitle,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
      ),
      keyboardType: keyboardType,
      validator: (value) => validate(value.toString()),
    );
  }
}
