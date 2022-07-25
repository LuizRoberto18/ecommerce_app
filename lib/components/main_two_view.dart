import 'package:flutter/material.dart';

import '../constants.dart';

class MainTwoView extends StatelessWidget {
  const MainTwoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/street-clothes.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      height: 200,
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(left: 10, bottom: 40),
        child: Text(
          "Street Clouthes",
          style: TextStyle(
            fontSize: 30,
            color: cModeDarkColorFontTitle,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
