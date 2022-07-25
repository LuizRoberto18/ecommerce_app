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
  //list product new
  List<Product> getProductNewList() {
    List<Product> productList = [
      Product(
          name: "Blouse",
          image: "assets/images/item1.png",
          store: "OVS",
          price: 30,
          discount: 0),
      Product(
          name: "T-Shirt Sailing",
          image: "assets/images/item2.png",
          store: "Manggo Boy",
          price: 10,
          discount: 0),
      Product(
          name: "Jeans",
          image: "assets/images/item3.png",
          store: "Cool",
          price: 45,
          discount: 0),
      Product(
          name: "Blouse",
          image: "assets/images/item4.png",
          store: "OVS",
          price: 30,
          discount: 0),
    ];

    return productList;
  }

  @override
  Widget build(BuildContext context) {
    final productItems = getProductNewList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: ListTile(
            title: Text(
              "New",
              style: TextStyle(
                color: cModeDarkColorFontTitle,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            subtitle: Text(
              "You've never seen it before!",
              style: TextStyle(
                color: cModeDarkColorFontSubTitle,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            trailing: Text(
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
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productItems.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Container(
                            width: 148,
                            height: 172,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(productItems[index].image),
                                fit: BoxFit.fill,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Container(
                          width: 35,
                          height: 18,
                          alignment: Alignment.center,
                          child: Text(
                            "NEW",
                            style: TextStyle(
                                color: cModeDarkColorFontTitle, fontSize: 10),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 160, left: 123),
                        child: Container(
                          width: 25,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFF363740),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 165),
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
                                  return Icon(Icons.star_border,
                                      color: Colors.grey, size: 15);
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                "(0)",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      productItems[index].store,
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      productItems[index].name,
                      style: TextStyle(
                          color: cModeDarkColorFontTitle,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "${productItems[index].price.toString()}\$",
                      style: TextStyle(
                          color: cModeDarkColorFontTitle, fontSize: 10),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
