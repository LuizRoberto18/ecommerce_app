import 'package:flutter/material.dart';

import '../constants.dart';

class MainView extends StatefulWidget {
  MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
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
}
