import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  width: 148,
                  height: 172,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(newProductList[index].image),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                width: 35,
                height: 18,
                alignment: Alignment.center,
                child: const Text(
                  "NEW",
                  style:
                      TextStyle(color: cModeDarkColorFontTitle, fontSize: 10),
                ),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160, left: 123),
              child: Container(
                width: 25,
                height: 25,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color(0xFF363740),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 165),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 2,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const Icon(Icons.star_border,
                            color: Colors.grey, size: 15);
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "(0)",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            newProductList[index].store,
            style: const TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            newProductList[index].name,
            style: const TextStyle(
                color: cModeDarkColorFontTitle, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            "${newProductList[index].price.toString()}\$",
            style:
                const TextStyle(color: cModeDarkColorFontTitle, fontSize: 10),
          ),
        ),
      ],
    );
  }
}
