import 'package:flutter/material.dart';
import 'package:pharmacy_delivery_app/screens/Menu/home_page.dart';
import 'package:pharmacy_delivery_app/widgets/drawer_screen_widget.dart';
class LayoutScreen extends StatefulWidget {
  static String id = 'layout_screen';
  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Drawer_Screen(),
          const Home_Page(),
        ],
      ),
    );
  }
}
