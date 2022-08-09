import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/categories.dart';

class ShoppingMenScreen extends StatefulWidget {
  const ShoppingMenScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingMenScreen> createState() => _ShoppingMenScreenState();
}

class _ShoppingMenScreenState extends State<ShoppingMenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cModeDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    image: "assets/images/image4.png",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CategoriesBox(
                    legend: "Clothes",
                    image: "assets/images/image1.png",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CategoriesBox(
                    legend: "Shoes",
                    image: "assets/images/image2.png",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CategoriesBox(
                    image: "assets/images/image3.png",
                    legend: "Accesories",
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
