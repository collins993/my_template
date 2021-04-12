
import 'package:flutter/material.dart';
import 'package:my_template/constants.dart';
import 'package:my_template/home/home_page.dart';
import 'package:my_template/register_screen/register_screen.dart';
import 'package:my_template/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String email;
  String password;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/log_in_screen.jpg"),
              fit: BoxFit.cover
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(top: 160.0, left: 24, right: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (value) {
                      var myMail = value;
                      email = myMail;
                    },
                    decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (value) {
                      var myPassword = value;
                      password = myPassword;
                    },
                    decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                            value: isRememberMe,
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                isRememberMe = !isRememberMe;
                              });
                            },
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  RoundedButton(
                    colour: Colors.lightBlueAccent,
                    title: "Log In",
                    onPressed: () => Navigator.pushNamed(context, MyHomePage.id),
                  ),
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  RoundedButton(
                    colour: Colors.blueAccent,
                    title: "SignUp Here",
                    onPressed: () => Navigator.pushNamed(context, RegistrationScreen.id),
                  ),
                ],
              ),
            ),
          ),
      ),

    );
  }
}
