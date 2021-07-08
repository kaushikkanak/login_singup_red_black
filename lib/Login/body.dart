import 'package:flutter/material.dart';
import 'package:login_signup/Login/background.dart';
import 'package:login_signup/signup/signup.dart';
import '../constant.dart';

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
            SizedBox(height: size.height * 0.2),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.09),
              child: Text(
                'Welcome \nBack',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: TextFormField(
                cursorColor: appPrimaryColor,
                style: TextStyle(
                  color: appPrimaryColor,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: textfieldlabel,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: textfieledborder),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: appPrimaryColor),
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
                  color: appPrimaryColor,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: size.width * 0.04,
                    color: textfieldlabel,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: textfieledborder),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: appPrimaryColor),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  width: size.width * 0.8,
                  height: size.height * 0.12,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 2.0,
                        padding: EdgeInsets.all(15.0),
                        primary: appPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: colorwhite,
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.2),
            Container(
                alignment: Alignment.center, child: _buildLoginBtn(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginBtn(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignUp(),
          ),
        );
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Dont\'t have an Account? ',
              style: TextStyle(
                color: Colors.black,
                fontSize: size / 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: colorwhite,
                fontSize: size / 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
