import 'package:ecommerce_app/bloc/authentication_bloc.dart';
import 'package:ecommerce_app/components/divider_footer.dart';
import 'package:ecommerce_app/components/icon_check.dart';
import 'package:ecommerce_app/components/sign_social_media.dart';
import 'package:ecommerce_app/components/text_form_field.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/sharedinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/main_menu.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool bCheckEmail = false;
  bool bCheckPassword = false;

  final authBloc = AuthenticationBloc();
  final sharedInfo = SharedInfo();

  void loadingDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Loading..."),
            content: CircularProgressIndicator(),
          );
        });
  }

  void messageDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: authBloc,
      listener: (context, AuthenticationState state) {
        if (state.user != null && state is AuthenticationState) {
          //dismis loading widget
          Navigator.of(context).pop();
          //save user to shared info
          sharedInfo.sharedLoginSave(state.user!);
          print("ok");
          //fo to main menu
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HomePageScreen(),
          ));
        } else if (state is LoadingState) {
          //show loading
          WidgetsBinding.instance
              .addPostFrameCallback((_) => loadingDialog(context));
        } else if (state is GetFailureState) {
          Navigator.of(context).pop();
          WidgetsBinding.instance.addPostFrameCallback(
              (_) => messageDialog(context, "Upps... ${state.error}"));
        }
      },
      child: Scaffold(
        backgroundColor: cModeDark,
        appBar: AppBar(
          backgroundColor: cModeDark,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    color: cModeDarkColorFontTitle,
                    fontSize: cSizeTextHeader,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
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
                              controller: emailController,
                              text: "E-mail",
                              validate: (value) =>
                                  validateEmail(value.toString()),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.85,
                                      top: 13),
                                  child: iconCheckEmail(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: cModeDarkColorTextBox,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Stack(
                          children: [
                            TextFormFieldEdited(
                              controller: passwordController,
                              text: 'Password',
                              validate: (value) =>
                                  validatePassword(value.toString()),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.85,
                                      top: 13),
                                  child:
                                      IconCheck(controller: passwordController),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot your Password?",
                        style: TextStyle(color: cModeDarkColorFontSubTitle)),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      child: Image.asset("assets/images/arrow-right.png"),
                      onTap: () {
                        print("ok");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen()));
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (emailController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          return messageDialog(
                              context, "Preencha os campos corretamente!.");
                        } else {
                          //add event click
                          authBloc.onLogin(
                              emailController.text, passwordController.text);
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePageScreen(),
                          ));
                        }
                      },
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                        primary: cModeDarkColorButtom,
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
                SizedBox(height: 10),
                SignSocialMedia(),
                SizedBox(
                  height: 20,
                ),
                DividerFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget iconCheckEmail() {
    if (_formKey.currentState == null) {
      return Container();
    } else if (bCheckEmail && emailController.text.isNotEmpty) {
      return Icon(
        Icons.check,
        color: Colors.green,
      );
    } else if (!bCheckEmail) {
      return Icon(
        Icons.clear,
        color: Colors.red,
      );
    } else {
      return Container();
    }
  }

  String validatePassword(String value) {
    if (value.length < 3) {
      bCheckPassword = false;
      return "Must be more than 3 character!";
    } else {
      bCheckPassword = true;
      return "";
    }
  }

  String validateEmail(String value) {
    Pattern regexEmailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(regexEmailPattern.toString());
    if (regex.hasMatch(value)) {
      bCheckEmail = true;
      //checar se validou email
      return "";
    } else {
      bCheckEmail = false;
      return "Not a valid eamil addressm Should be your@email.com!";
    }
  }
}
