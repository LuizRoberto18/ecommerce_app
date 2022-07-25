import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/product.dart';

class ProductSaleView extends StatefulWidget {
  ProductSaleView({Key? key}) : super(key: key);

  @override
  State<ProductSaleView> createState() => _ProductSaleViewState();
}

class _ProductSaleViewState extends State<ProductSaleView> {
  int index = 0;
  //list product sale
  List<Product> getProductSaleList() {
    List<Product> productList = [
      Product(
          name: "Blouse",
          image: "assets/images/item4.png",
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
          name: "Blouse",
          image: "assets/images/item1.png",
          store: "OVS",
          price: 30,
          discount: 0),
      Product(
          name: "Jeans",
          image: "assets/images/item3.png",
          store: "Cool",
          price: 45,
          discount: 0),
    ];
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    final productItems = getProductSaleList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: const ListTile(
            title: Text(
              "Sale",
              style: TextStyle(
                  color: cModeDarkColorFontTitle,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            subtitle: Text(
              "Super summer sale",
              style: TextStyle(
                  color: cModeDarkColorFontSubTitle,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
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
          height: 290,
          child: ListView.builder(
            itemCount: productItems.length,
            padding: EdgeInsets.only(top: 10, left: 10),
            scrollDirection: Axis.horizontal,
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
                            "- ${productItems[index].discount}%",
                            style: TextStyle(
                                color: cModeDarkColorFontTitle, fontSize: 10),
                          ),
                          decoration: BoxDecoration(
                            color: cModeDarkColorButtom,
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
                                  return Icon(Icons.star,
                                      color: Colors.orangeAccent, size: 15);
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text("(10)",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10)),
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
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      productItems[index].name,
                      style: TextStyle(
                        color: cModeDarkColorFontTitle,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: double.parse(productItems[index]
                                      .price
                                      .toString()
                                      .length
                                      .toString()) *
                                  6.2,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                                height: 10,
                              ),
                            ),
                            Text(productItems[index].price.toString() + "\$ ",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                        Text(
                            (productItems[index].price -
                                        (productItems[index].price *
                                            productItems[index].discount /
                                            100))
                                    .toStringAsFixed(0) +
                                "\$",
                            style: TextStyle(
                                color: cModeDarkColorButtom, fontSize: 10)),
                      ],
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
