import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';
import '../screens/cart.dart';

class CategoriesBox extends StatelessWidget {
  final String image;
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
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: cModeDarkColorTextBox,
                elevation: 0,
              ),
              child: Text(
                legend,
                style: TextStyle(
                  color: cModeDarkColorFontSubTitle,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 140,
            width: 200,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
