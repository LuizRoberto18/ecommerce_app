import 'package:ecommerce_app/components/icon_check_email.dart';
import 'package:ecommerce_app/components/icon_check_password.dart';
import 'package:ecommerce_app/components/sign_social_media.dart';
import 'package:ecommerce_app/components/text_form_field.dart';
import 'package:ecommerce_app/screens/login.dart';
import 'package:ecommerce_app/screens/main_menu.dart';
import 'package:flutter/material.dart';

import '../components/divider_footer.dart';
import '../components/icon_check_name.dart';
import '../constants.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool bCheckName = false;
  bool bCheckEmail = false;
  bool bCheckPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cModeDark,
      appBar: AppBar(
        backgroundColor: cModeDark,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    color: cModeDarkColorFontTitle,
                    fontSize: cSizeTextHeader,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: cModeDarkColorTextBox,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Stack(
                        children: [
                          TextFormFieldEdited(
                            controller: nameController,
                            text: "Name",
                            validate: (value) => validateName(value.toString()),
                            keyboardType: TextInputType.text,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.85,
                                  top: 13,
                                ),
                                child: IconCheckName(),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: cModeDarkColorTextBox,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Stack(
                        children: [
                          TextFormFieldEdited(
                            controller: emailController,
                            text: "Email",
                            validate: (value) => validateEmail(value),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * .85,
                                  top: 13,
                                ),
                                child: IconCheckEmail(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: cModeDarkColorTextBox,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Stack(
                        children: [
                          TextFormFieldEdited(
                            controller: passwordController,
                            text: "Password",
                            validate: (value) => validatePassword(value),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * .85,
                                  top: 13,
                                ),
                                child: IconCheckPassword(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(color: cModeDarkColorFontTitle)),
                  InkWell(
                    child: Image.asset("assets/images/arrow-right.png"),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MainMenu()));
                    },
                    child: Text("SIGN UP"),
                    style: ElevatedButton.styleFrom(
                      primary: cModeDarkColorButtom,
                      textStyle: TextStyle(color: cModeDarkColorButtonText),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: Text(
                  "Or login with social account?",
                  style: TextStyle(color: cModeDarkColorFontTitle),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SignSocialMedia(),
              SizedBox(height: 20),
              DividerFooter(),
            ],
          ),
        ),
      ),
    );
  }

  String validateName(String value) {
    if (value.length < 3) {
      bCheckName = false;
      return "Must be more than 3 character!";
    } else {
      bCheckName = true;
      return "ok";
    }
  }

  String validatePassword(String value) {
    if (value.length < 3) {
      bCheckPassword = false;
      return "Must be more than 3 character!";
    } else {
      bCheckPassword = true;
      return "ok";
    }
  }

  String validateEmail(String value) {
    Pattern regexEmailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(regexEmailPattern.toString());
    if (!regex.hasMatch(value)) {
      bCheckEmail = false;
      return "Not a valid email address, Should be your@email.com!";
    } else {
      bCheckEmail = true;
      return "ok";
    }
  }
}
