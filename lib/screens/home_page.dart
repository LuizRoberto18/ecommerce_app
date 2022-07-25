import 'package:flutter/material.dart';

import 'package:ecommerce_app/screens/login.dart';
import 'package:ecommerce_app/screens/main_menu.dart';
import 'package:ecommerce_app/screens/shopping.dart';

import '../constants.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _indexSelecionado = 0;

  void _tabSelecionada(int index) {
    print(index);
    setState(() {
      _indexSelecionado = index;
    });
  }

//Lista de telas
  final List<Widget> _telas = [
    MainMenu(),
    ShoppingScreen(),
    Container(),
    Container(),
    LoginScreen()
  ];

  @override
  Widget build(BuildContext context) {
    print(_indexSelecionado);
    return Scaffold(
      body: _telas[_indexSelecionado],
      /*bottomNavigationBar: CostumBottomNavigationBar(
        tabSelecioada: _tabSelecionada,
        items: [
          BottomNavigationBarItemEdited(
            label: "Home",
            icon: Icons.home,
            temNotificacao: true,
          ),
          BottomNavigationBarItemEdited(
            label: "Shopping",
            icon: Icons.shopping_cart,
            temNotificacao: true,
          ),
          BottomNavigationBarItemEdited(
            label: "Bag",
            icon: Icons.next_week,
            temNotificacao: true,
          ),
          BottomNavigationBarItemEdited(
            label: "Favorite",
            icon: Icons.favorite,
            temNotificacao: false,
          ),
          BottomNavigationBarItemEdited(
            label: "Profile",
            icon: Icons.person,
            temNotificacao: false,
          ),
        ],
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexSelecionado,
        onTap: _tabSelecionada,
        selectedItemColor: cModeDarkColorButtom,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:
                  (_indexSelecionado == 0) ? cModeDarkColorButtom : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color:
                  (_indexSelecionado == 1) ? cModeDarkColorButtom : Colors.grey,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.next_week,
              color:
                  (_indexSelecionado == 2) ? cModeDarkColorButtom : Colors.grey,
            ),
            label: "Bag",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (_indexSelecionado == 3) ? Icons.favorite : Icons.favorite_border,
              color:
                  (_indexSelecionado == 3) ? cModeDarkColorButtom : Colors.grey,
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color:
                  (_indexSelecionado == 4) ? cModeDarkColorButtom : Colors.grey,
            ),
            label: "Logout",
          ),
        ],
      ),
    );
  }
}
