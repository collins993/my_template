import 'package:flutter/material.dart';
import 'package:my_template/register_screen/welcome_screen.dart';

class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(20),
                image: DecorationImage(
                    image: AssetImage("assets/log_in_screen.jpg"),
                    fit: BoxFit.cover
                ),
              ),
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: 120),
                  child: Text(
                        "Code Locks",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                ),

              )),
          ListTile(
            onTap: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
              // closeDrawer();
            },
            leading: Icon(Icons.person),
            title: Text(
              "Your Profile",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped settings");
            },
            leading: Icon(Icons.settings),
            title: Text(
                "Settings",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Payments");
            },
            leading: Icon(Icons.payment),
            title: Text(
                "Payments",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Notifications");
            },
            leading: Icon(Icons.notifications),
            title: Text(
                "Notifications",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, WelcomeScreen.id);
              debugPrint("Tapped Log Out");
            },
            leading: Icon(Icons.exit_to_app),
            title: Text(
                "Log Out",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}