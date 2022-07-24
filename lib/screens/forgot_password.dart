import 'package:ecommerce_app/components/divider_footer.dart';
import 'package:ecommerce_app/components/icon_check_email.dart';
import 'package:ecommerce_app/components/text_form_field.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool bCheckEmail = false;
  bool bCheckPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cModeDark,
      appBar: AppBar(
        backgroundColor: cModeDark,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(
                    color: cModeDarkColorFontSubTitle,
                    fontSize: cSizeTextHeader,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Text(
                "Please enter your email address. You will recieve a link to create new password via E-mail.",
                style: TextStyle(color: cModeDarkColorFontTitle),
              ),
              SizedBox(height: 10),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: cModeDarkColorTextBox,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Stack(
                        children: [
                          TextFormFieldEdited(
                            controller: emailController,
                            text: "Email",
                            keyboardType: TextInputType.emailAddress,
                            validate: (value) =>
                                validateEmail(value.toString()),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.85,
                                    top: 13),
                                child: IconCheckEmail(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("SEND"),
                          style: ElevatedButton.styleFrom(
                            primary: cModeDarkColorButtom,
                            textStyle:
                                TextStyle(color: cModeDarkColorButtonText),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 200),
                    DividerFooter(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String validateEmail(String value) {
    Pattern regexEmailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(regexEmailPattern.toString());
    if (regex.hasMatch(value)) {
      bCheckEmail = true;
      return "ok";
    } else {
      bCheckEmail = false;
      return "Not a valid email address, Should be your@email.com!";
    }
  }
}
