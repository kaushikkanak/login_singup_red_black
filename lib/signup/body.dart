import 'package:flutter/material.dart';
import 'package:login_signup/constant.dart';
import 'package:login_signup/signup/backgound.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * 0.22),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.09),
              child: Text(
                'Create\nAccount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: TextFormField(
                cursorColor: colorwhite,
                style: TextStyle(
                  color: colorwhite,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: colorwhite,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorwhite),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorwhite),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: TextFormField(
                cursorColor: colorwhite,
                style: TextStyle(
                  color: colorwhite,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: colorwhite,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorwhite),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorwhite),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: TextFormField(
                cursorColor: appPrimaryColor,
                obscureText: true,
                style: TextStyle(
                  color: colorwhite,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: colorwhite,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorwhite),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorwhite),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: TextFormField(
                cursorColor: appPrimaryColor,
                obscureText: true,
                style: TextStyle(
                  color: colorwhite,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: colorwhite,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorwhite),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorwhite),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.2),
          ],
        ),
      ),
    );
  }
}
