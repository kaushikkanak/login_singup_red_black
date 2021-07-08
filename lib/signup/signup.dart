import 'package:flutter/material.dart';
import 'package:login_signup/constant.dart';
import 'package:login_signup/signup/body.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: Body(),
    );
  }
}
