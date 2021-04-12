import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  static const String id = 'dashboard_screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
