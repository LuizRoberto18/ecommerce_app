import 'package:ecommerce_app/components/main_three_view.dart';
import 'package:flutter/material.dart';

import '../components/main_two_view.dart';
import '../components/main_view.dart';
import '../components/product_new_view.dart';
import '../components/product_sale_view.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //body: _telas[0],
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainView(),
            ProductNewView(),
            //main view two
            MainTwoView(),
            ProductSaleView(),
            ProductNewView(),
            //main view three
            MainThreeView(),
          ],
        ),
      ),
    );
  }
}
