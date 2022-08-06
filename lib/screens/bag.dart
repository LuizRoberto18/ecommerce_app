import 'package:ecommerce_app/components/bag_item.dart';
import 'package:ecommerce_app/components/text_form_field.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/llist_tile.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({Key? key}) : super(key: key);

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  final promoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cModeDark,
      appBar: AppBar(
        backgroundColor: cModeDark,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
            bottom: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "My Bag",
                style: TextStyle(
                  fontSize: cSizeTextHeader,
                  color: cModeDarkColorFontTitle,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const BagItem(
                image: "assets/images/item1.png",
                title: "Pullover",
                subTitle: "Colot: black",
                price: 51,
              ),
              const SizedBox(height: 15),
              const BagItem(
                image: "assets/images/item2.png",
                title: "T-Shirt",
                subTitle: "Colot: Gray",
                price: 30,
              ),
              const SizedBox(height: 15),
              const BagItem(
                image: "assets/images/item3.png",
                title: "Sport Dress",
                subTitle: "Colot: black",
                price: 43,
              ),
              const SizedBox(height: 20),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  // background não esta funcioando
                  TextFormFieldEdited(
                    controller: promoController,
                    text: "Enter your promo code",
                    keyboardType: TextInputType.text,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: cModeDarkColorFontSubTitle,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: cModeDarkColorTextBox,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total amount:",
                    style: TextStyle(color: cModeDarkColorFontSubTitle),
                  ),
                  const Text(
                    "124\$",
                    style: TextStyle(
                      color: cModeDarkColorFontTitle,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Check out".toUpperCase()),
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    primary: cModeDarkColorButtom,
                    shadowColor: cModeDarkColorButtom,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
