import 'package:flutter/material.dart';
import 'package:pharmacy_delivery_app/contants.dart';
import 'package:pharmacy_delivery_app/login_signup/login_signup_screen.dart';
import 'package:pharmacy_delivery_app/screens/Menu/Notifications/notifications.dart';
import 'package:pharmacy_delivery_app/screens/Menu/about_us_page.dart';
import 'package:pharmacy_delivery_app/screens/Menu/all_order_page.dart';
import 'package:pharmacy_delivery_app/screens/Menu/help_page.dart';
import 'package:pharmacy_delivery_app/screens/Menu/home_page.dart';
import 'package:pharmacy_delivery_app/screens/Menu/profile_page.dart';
import 'package:pharmacy_delivery_app/widgets/layout_screen.dart';
import 'package:pharmacy_delivery_app/widgets/menu_item.dart';

class Drawer_Screen extends StatefulWidget {
  @override
  _Drawer_ScreenState createState() => _Drawer_ScreenState();
}

class _Drawer_ScreenState extends State<Drawer_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Text(
                'Denzel Hayford',
                style: TextStyle(
                    fontFamily: 'Poppins-Light',
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2),
              ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          buildMenuItem(
            text: 'Home',
            icon: Icons.home,
            onClicked: () => selectedItem(context, 1),
          ),
          const SizedBox(
            height: 16,
          ),
          buildMenuItem(
            text: 'My Profile',
            icon: Icons.person,
            onClicked: () => selectedItem(context, 2),
          ),
          const SizedBox(
            height: 16,
          ),
          buildMenuItem(
            text: 'My Orders',
            icon: Icons.history,
            onClicked: () => selectedItem(context, 3),
          ),
          const SizedBox(
            height: 16,
          ),
          buildMenuItem(
            text: 'Help & Support',
            icon: Icons.help,
            onClicked: () => selectedItem(context, 4),
          ),
          const SizedBox(
            height: 16,
          ),
          buildMenuItem(
            text: 'About Us',
            icon: Icons.info,
            onClicked: () => selectedItem(context, 5),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 115.0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          buildMenuItem(
            text: 'Notifications',
            icon: Icons.notifications_active_outlined,
            onClicked: () => selectedItem(context, 6),
          ),
          const SizedBox(
            height: 24,
          ),
          buildMenuItem(
            text: 'Settings',
            icon: Icons.settings,
            onClicked: () => selectedItem(context, 7),
          ),
          const SizedBox(
            height: 24,
          ),
          buildMenuItem(
              text: 'Log Out',
              icon: Icons.logout_outlined,
              onClicked: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login_Signup_Screen()))),
        ],
      ),
    );
  }
}

Widget buildHeader({
  required String name,
  required String email,
  required IconData icon,
  VoidCallback? onClicked,
}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  icon,
                  color: Colors.deepPurple,
                  size: 38,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color, fontFamily: 'Poppins-Light'),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Profile_Page(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LayoutScreen(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Profile_Page(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyOrders_Screen(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Help_Page(),
      ));
      break;
    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => About_Page(),
      ));
      break;
    case 6:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Notifications_Screen(),
      ));
      break;
    case 7:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Home_Page(),
      ));
      break;
  }
}
