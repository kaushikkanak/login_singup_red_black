import 'package:flutter/material.dart';
import 'package:login_signup/Login/login.dart';
import 'package:login_signup/constant.dart';
import 'package:login_signup/signup/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login SignUP',
      theme: ThemeData(
        primaryColor: appPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SignUp(),
    );
  }
}
