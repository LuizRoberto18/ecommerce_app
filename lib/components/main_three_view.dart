import 'package:flutter/material.dart';

import '../constants.dart';

class MainThreeView extends StatelessWidget {
  const MainThreeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/new-collection.png"),
              fit: BoxFit.fill,
            ),
          ),
          height: 420,
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20, bottom: 30),
            child: Text(
              "New collection",
              style: TextStyle(
                  fontSize: 38,
                  color: cModeDarkColorFontTitle,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  width: 192,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10, top: 15, bottom: 30),
                    child: Text("Summer Sale",
                        style: TextStyle(
                            fontSize: 32,
                            color: cModeDarkColorButtom,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  height: 199,
                  width: 219,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/black.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 10, top: 15, bottom: 30),
                    child: Text("Black",
                        style: TextStyle(
                            fontSize: 32,
                            color: cModeDarkColorFontTitle,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            Container(
              height: 350,
              width: 192,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/man-hat.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10, top: 32, bottom: 30),
                child: Text(
                  "Men's \nHats",
                  style: TextStyle(
                      fontSize: 32,
                      color: cModeDarkColorFontTitle,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
