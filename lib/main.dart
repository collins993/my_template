import 'package:flutter/material.dart';
import 'package:my_template/home/dash_board.dart';
import 'package:my_template/home/home_page.dart';
import 'package:my_template/register_screen/login_screen.dart';
import 'package:my_template/register_screen/register_screen.dart';
import 'package:my_template/register_screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        MyHomePage.id: (context) => MyHomePage(),
        DashBoardScreen.id: (context) => DashBoardScreen(),
      },
    );
  }
}
