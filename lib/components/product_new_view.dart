import 'package:ecommerce_app/components/product_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/product.dart';

class ProductNewView extends StatefulWidget {
  ProductNewView({Key? key}) : super(key: key);

  @override
  State<ProductNewView> createState() => _ProductNewViewState();
}

class _ProductNewViewState extends State<ProductNewView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
            title: const Text(
              "New",
              style: TextStyle(
                color: cModeDarkColorFontTitle,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            subtitle: const Text(
              "You've never seen it before!",
              style: TextStyle(
                color: cModeDarkColorFontSubTitle,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            trailing: const Text(
              "View all",
              style: TextStyle(
                color: cModeDarkColorFontSubTitle,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
        ),
        Container(
          height: 260,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: newProductList.length,
            itemBuilder: (context, index) {
              return ProductCard(
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
