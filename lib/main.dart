import 'package:ecommerce_app/bloc/authentication_bloc.dart';
import 'package:ecommerce_app/screens/main_menu.dart';
import 'package:ecommerce_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  final authBloc = AuthenticationBloc();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    authBloc.onCheckLogin();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocListener(
        bloc: authBloc,
        listener: (context, AuthenticationState state) {
          if (state is LoggedInState) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MainMenu(),
              ),
            );
          } else {
            SignUpScreen();
          }
        },
        child: SignUpScreen(),
      ),
    );
  }
}
