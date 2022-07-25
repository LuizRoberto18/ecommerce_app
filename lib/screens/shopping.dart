import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/categories.dart';

class ShoppingScreen extends StatefulWidget {
  ShoppingScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cModeDark,
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Categories"),
        centerTitle: true,
        backgroundColor: cModeDark,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Navegacao 1",
                  style: TextStyle(color: cModeDarkColorFontTitle),
                ),
                Text(
                  "Navegacao 2",
                  style: TextStyle(color: cModeDarkColorFontTitle),
                ),
                Text(
                  "Navegacao 3",
                  style: TextStyle(color: cModeDarkColorFontTitle),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width * 1,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: cModeDarkColorButtom,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sumer Sales".toUpperCase(),
                          style: TextStyle(
                            color: cModeDarkColorFontTitle,
                            fontSize: cSizeTextHeader,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        ),
                        Text(
                          "Up to 50% off",
                          style: TextStyle(
                            color: cModeDarkColorFontSubTitle,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CategoriesBox(
                    legend: "New",
                    image: Image.asset("assets/images/item4.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CategoriesBox(
                    legend: "Accesories",
                    image: Image.asset("assets/images/image3.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
