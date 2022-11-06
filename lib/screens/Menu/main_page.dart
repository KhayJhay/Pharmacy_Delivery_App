import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy_delivery_app/contants.dart';
import 'package:pharmacy_delivery_app/widgets/layout_screen.dart';

import 'home_page.dart';

class Main_Page extends StatefulWidget {
  static String id = 'main_page';
  const Main_Page({Key? key}) : super(key: key);

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              children: <Widget>[
                Container(
                  height: _height * 0.4,
                  width: _width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.teal,
                        Colors.tealAccent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                      top: 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You're Offline",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Poppins-Light',
                                letterSpacing: 3,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: _height * 0.85,
              width: _width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    children: <Widget>[
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30, bottom: 10),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                      text: "Hello,",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'Poppins-Light',
                                        color: Colors.teal,
                                        letterSpacing: 2,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: (" Denzel"),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, right: 20,bottom: 40,),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Lottie.asset(
                                  'assets/lotties/offline.json',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("No Content Available Offline",
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins-SemiBold',
                                      fontSize: 20,
                                    ),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                                  child: Text("Tap on the switch below to go Online when you're connected to the Internet",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins-Thin',
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 40),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Not available',
                                          style: isActive == false
                                              ? trueSwitch
                                              : falseSwitch),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      const SizedBox(width: 5),
                                      FlutterSwitch(
                                        width: 60,
                                        height: 35.0,
                                        toggleSize: 20.0,
                                        borderRadius: 30.0,
                                        padding: 6.0,
                                        toggleColor:
                                            Color.fromRGBO(225, 225, 225, 1),
                                        activeColor: Colors.tealAccent,
                                        inactiveColor: Colors.black38,
                                        value: isActive,
                                        onToggle: (online) {
                                          setState(() {
                                            //checks is user is active
                                            isActive = online;
                                            if (isActive == true) {
                                              Timer(
                                                Duration(seconds: 1),
                                                () => Navigator
                                                    .pushNamed (
                                                        context, LayoutScreen.id),
                                              );
                                            }
                                          });
                                        },
                                      ),
                                      SizedBox(width: 10),
                                      Text('Available',
                                          style: isActive == false
                                              ? falseSwitch
                                              : trueSwitch),
                                    ]),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
