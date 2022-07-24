import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class SignSocialMedia extends StatelessWidget {
  const SignSocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 90,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            child: Center(child: Image.asset("assets/images/google-icon.png")),
            style: ElevatedButton.styleFrom(
              primary: cModeDarkColorFontTitle,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 90,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            child:
                Center(child: Image.asset("assets/images/facebook-icon.png")),
            style: ElevatedButton.styleFrom(
              primary: cModeDarkColorFontTitle,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
