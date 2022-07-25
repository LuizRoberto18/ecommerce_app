import 'package:flutter/material.dart';

import '../constants.dart';

class CategoriesBox extends StatelessWidget {
  final Image image;
  final String legend;
  const CategoriesBox({Key? key, required this.image, required this.legend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cModeDarkColorTextBox,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              legend,
              style: TextStyle(
                color: cModeDarkColorFontSubTitle,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          image,
        ],
      ),
    );
  }
}
