import 'package:flutter/material.dart';
import 'package:pharmacy_delivery_app/login_signup/login_signup_screen.dart';
import 'package:pharmacy_delivery_app/onBoarding_page.dart';
import 'package:pharmacy_delivery_app/screens/Menu/home_page.dart';
import 'package:pharmacy_delivery_app/screens/Menu/main_page.dart';
import 'package:pharmacy_delivery_app/screens/Menu/profile_page.dart';
import 'package:pharmacy_delivery_app/sign_in/sign_in_screen.dart';
import 'package:pharmacy_delivery_app/widgets/layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharmacy Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoarding_Page(),
      routes: {
        Main_Page.id: (context) => Main_Page(),
        LayoutScreen.id: (context) => LayoutScreen(),
        Home_Page.id: (context) => const Home_Page(),
      },
    );
  }
}
