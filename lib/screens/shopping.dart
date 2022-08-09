import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/shopping._men.dart';
import 'package:ecommerce_app/screens/shopping_kids.dart';
import 'package:ecommerce_app/screens/shopping_woman.dart';
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: cModeDark,
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text("Categories"),
          centerTitle: true,
          backgroundColor: cModeDark,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Woman',
              ),
              Tab(
                text: 'Men',
              ),
              Tab(
                text: 'Kids',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ShoppingWomanScreen(),
            ShoppingMenScreen(),
            ShoppingKidsScreen(),
          ],
        ),
      ),
    );
  }
}
