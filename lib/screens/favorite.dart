import 'package:ecommerce_app/components/elevated_button.dart';
import 'package:ecommerce_app/components/product_sale_view.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/product_new_view.dart';
import '../models/product.dart';

class FavoriteScreen extends StatefulWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final estrelas = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cModeDark,
      appBar: AppBar(
        title: Text(
          "Women`s tops",
          style: TextStyle(color: cModeDarkColorFontTitle),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: cModeDark,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 50,
                //Fazer uma scroll dessa lista
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButtonEdited(
                      primaryColor: cModeDarkColorButtom,
                      textColor: cModeDarkColorButtonText,
                      child: Text("T-shirts"),
                      onPressed: () {},
                    ),
                    ElevatedButtonEdited(
                      primaryColor: cModeDarkColorButtom,
                      textColor: cModeDarkColorButtonText,
                      child: Text("Crop tops"),
                      onPressed: () {},
                    ),
                    ElevatedButtonEdited(
                      primaryColor: cModeDarkColorButtom,
                      textColor: cModeDarkColorButtonText,
                      child: Text("Blouses"),
                      onPressed: () {},
                    ),
                    ElevatedButtonEdited(
                      primaryColor: cModeDarkColorButtom,
                      textColor: cModeDarkColorButtonText,
                      child: Text("Shorts"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButtonEdited(
                      primaryColor: cModeDarkColorTextBox,
                      textColor: cModeDarkColorFontSubTitle,
                      child: Row(
                        children: [
                          Icon(
                            Icons.filter_list,
                          ),
                          Text("Filters"),
                        ],
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButtonEdited(
                      primaryColor: cModeDarkColorTextBox,
                      textColor: cModeDarkColorFontSubTitle,
                      child: Row(
                        children: [
                          Icon(
                            Icons.compare_arrows,
                          ),
                          SizedBox(width: 5),
                          Text("Price: lovest to high"),
                        ],
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButtonEdited(
                      primaryColor: cModeDarkColorTextBox,
                      textColor: cModeDarkColorFontSubTitle,
                      child: Icon(
                        Icons.list,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: saleProductList.length,
                  padding: EdgeInsets.all(5),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
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
                                        image: AssetImage(
                                            saleProductList[index].image),
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
                                    "- ${saleProductList[index].discount}%",
                                    style: TextStyle(
                                        color: cModeDarkColorFontTitle,
                                        fontSize: 10),
                                  ),
                                  decoration: BoxDecoration(
                                    color: cModeDarkColorButtom,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
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
                                              color: Colors.orangeAccent,
                                              size: 15);
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text("(10)",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              saleProductList[index].store,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              saleProductList[index].name,
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
                                      width: double.parse(saleProductList[index]
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
                                    Text(
                                        saleProductList[index]
                                                .price
                                                .toString() +
                                            "\$ ",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10)),
                                  ],
                                ),
                                Text(
                                    (saleProductList[index].price -
                                                (saleProductList[index].price *
                                                    saleProductList[index]
                                                        .discount /
                                                    100))
                                            .toStringAsFixed(0) +
                                        "\$",
                                    style: TextStyle(
                                        color: cModeDarkColorButtom,
                                        fontSize: 10)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
