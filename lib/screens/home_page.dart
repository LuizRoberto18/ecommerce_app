import 'package:ecommerce_app/screens/bag.dart';
import 'package:ecommerce_app/screens/favorite.dart';
import 'package:ecommerce_app/screens/profile.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/screens/login.dart';
import 'package:ecommerce_app/screens/main_menu.dart';
import 'package:ecommerce_app/screens/shopping.dart';

import '../constants.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _indexSelecionado = 0;

  void _tabSelecionada(int index) {
    setState(() {
      _indexSelecionado = index;
    });
  }

//Lista de telas
  final List<Widget> _telas = [
    MainMenu(),
    ShoppingScreen(),
    BagScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indexSelecionado],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexSelecionado,
        onTap: _tabSelecionada,
        selectedItemColor: cModeDarkColorButtom,
        iconSize: 25,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:
                  (_indexSelecionado == 0) ? cModeDarkColorButtom : Colors.grey,
            ),
            backgroundColor: Colors.black,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color:
                  (_indexSelecionado == 1) ? cModeDarkColorButtom : Colors.grey,
            ),
            backgroundColor: Colors.black,
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.next_week,
              color:
                  (_indexSelecionado == 2) ? cModeDarkColorButtom : Colors.grey,
            ),
            backgroundColor: Colors.black,
            label: "Bag",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (_indexSelecionado == 3) ? Icons.favorite : Icons.favorite_border,
              color:
                  (_indexSelecionado == 3) ? cModeDarkColorButtom : Colors.grey,
            ),
            backgroundColor: Colors.black,
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color:
                  (_indexSelecionado == 4) ? cModeDarkColorButtom : Colors.grey,
            ),
            backgroundColor: Colors.black,
            label: "Logout",
          ),
        ],
      ),
    );
  }
}
