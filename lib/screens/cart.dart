import 'package:ecommerce_app/components/elevated_button.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/product_new_view.dart';
import '../models/product.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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

  final estrelas = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    final productItems = getProductNewList();
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
                height: 600,
                child: ListView.builder(
                  itemCount: productItems.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: cModeDarkColorTextBox,
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                productItems[index].image,
                                fit: BoxFit.fill,
                                width: 150,
                                height: 150,
                              ),
                              SizedBox(width: 5),
                              //Erro ao Usar ListTile
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productItems[index].name,
                                      style: TextStyle(
                                        color: cModeDarkColorFontTitle,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      productItems[index].store,
                                      style: TextStyle(
                                        color: cModeDarkColorFontSubTitle,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      height: 2,
                                      child: ListView.builder(
                                        itemCount: estrelas.length,
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 15,
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "${productItems[index].price.toString()}\$",
                                      style: TextStyle(
                                        color: cModeDarkColorFontTitle,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 300, top: 120),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: cModeDarkColorTextBoxLabel,
                                fixedSize: Size(0, 60),
                                elevation: 10,
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60),
                                )),
                            child: Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
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
