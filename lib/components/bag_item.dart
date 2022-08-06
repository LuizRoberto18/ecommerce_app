import 'package:flutter/material.dart';

import '../constants.dart';
import 'llist_tile.dart';

class BagItem extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final double price;

  const BagItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: cModeDarkColorTextBox,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 150,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Container(
                width: 261,
                child: ListTileEdited(
                  title: title,
                  subTitle: subTitle,
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.drag_indicator,
                      color: cModeDarkColorFontSubTitle,
                    ),
                  ),
                ),
              ),
              Container(
                width: 260,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
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
                              color: const Color(0xFF363740),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove,
                                color: cModeDarkColorFontSubTitle,
                                size: 25,
                              ),
                            ),
                          ),
                          const Text(
                            "1",
                            style: TextStyle(
                              color: cModeDarkColorFontSubTitle,
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
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
                              color: const Color(0xFF363740),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: cModeDarkColorFontSubTitle,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "$price\$",
                      style: TextStyle(
                        color: cModeDarkColorFontTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
