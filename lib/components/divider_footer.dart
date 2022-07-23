import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class DividerFooter extends StatelessWidget {
  const DividerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 130,
        child: Divider(
          color: cModeDarkColorFontTitle,
          thickness: 3,
        ),
      ),
    );
  }
}
