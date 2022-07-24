import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/product.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
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

//Lista de telas
  final List _telas = [
    MainMenu(),
    Container(),
    Container(),
    Container(),
    LoginScreen(),
  ];
  int _paginaAtual = 0;

/*void aoMudarDeAba(int index){
  setState(() {
    _paginaAtual = index;
  });
}*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //body: _telas[0],
      body: SingleChildScrollView(
        child: Column(
          children: [
            mainView(),
            productNewview(),
            //main view two
            mainTwoView(),
            productSaleView(),
            productNewview(),
            //main view three
            mainThreeView()
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 55,
        child: BottomNavigationBar(
          selectedItemColor: cModeDarkColorButtom,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: 0,
          //onTap: aoMudarDeAba,
          iconSize: 25,
          selectedIconTheme: IconThemeData(
            color: (index == 0) ? cModeDarkColorButtom : Colors.grey,
          ),
          selectedLabelStyle: TextStyle(),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: (index == 0) ? cModeDarkColorButtom : Colors.grey,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: (index == 1) ? cModeDarkColorButtom : Colors.grey,
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.next_week,
                color: (index == 2) ? cModeDarkColorButtom : Colors.grey,
              ),
              label: "Bag",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: (index == 3) ? cModeDarkColorButtom : Colors.grey,
              ),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.logout,
                color: (index == 4) ? cModeDarkColorButtom : Colors.grey,
              ),
              label: "Logout",
            ),
          ],
        ),
      ),
    );
  }

  Widget mainView() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Big-banner.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      height: 400,
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.only(left: 10, bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Fashion \nsal",
              style: TextStyle(
                  fontSize: 45,
                  color: cModeDarkColorFontTitle,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.40,
              height: MediaQuery.of(context).size.width * 0.08,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: cModeDarkColorButtom,
                  textStyle: TextStyle(color: cModeDarkColorButtonText),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Text("Check"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productNewview() {
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

  Widget mainTwoView() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/street-clothes.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      height: 200,
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(left: 10, bottom: 40),
        child: Text(
          "Street Clouthes",
          style: TextStyle(
            fontSize: 30,
            color: cModeDarkColorFontTitle,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget productSaleView() {
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

  Widget mainThreeView() {
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
          height: 300,
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
                  height: 150,
                  width: 192,
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
              height: 300,
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
