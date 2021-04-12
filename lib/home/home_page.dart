import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:my_template/home/dash_board.dart';
import 'package:my_template/widgets/custom_drawer.dart';
import 'package:swipedetector/swipedetector.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'home_screen';


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  FSBStatus status;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SwipeDetector(
        onSwipeRight: () {
          setState(() {
            status = FSBStatus.FSB_OPEN;
          });
        },
        onSwipeLeft: () {
          setState(() {
            status = FSBStatus.FSB_CLOSE;
          });
        },
        child: FoldableSidebarBuilder(
            drawerBackgroundColor: Colors.grey[700],
            status: status,
            drawer: CustomDrawer(
              closeDrawer: () {
                setState(() {
                  status = FSBStatus.FSB_CLOSE;
                });
              },
            ),
            screenContents: DashBoardScreen()
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[700],
        onPressed: () {
          setState(() {
            status = status == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}