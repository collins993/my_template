import 'package:flutter/material.dart';
import 'package:my_template/constants.dart';
import 'package:my_template/home/home_page.dart';
import 'package:my_template/widgets/rounded_button.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {


  bool showSpinner = false;
  String email;
  String password;
  String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/sign_up_screen.jpg"),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(top: 220.0, left: 24, right: 24),
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
                      var myUserName = value;
                      userName = myUserName;
                    },
                    decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your username'),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
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
                    decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (value) {
                      var myPassword = value;
                      password = myPassword;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter your password'),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  RoundedButton(
                    colour: Colors.blueAccent,
                    title: "Register",
                    onPressed: () => Navigator.pushNamed(context, MyHomePage.id),
                  ),
                ],
              ),
            ),
          ),

      ),
    );
  }
}
