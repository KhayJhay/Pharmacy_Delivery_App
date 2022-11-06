import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy_delivery_app/contants.dart';
import 'package:pharmacy_delivery_app/widgets/layout_screen.dart';

import 'main_page.dart';

class About_Page extends StatefulWidget {
  @override
  _About_PageState createState() => _About_PageState();
}

class _About_PageState extends State<About_Page> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;
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
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 50.0,
                                left: 20,
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, LayoutScreen.id);
                                    },
                                    icon: const Icon(CupertinoIcons.back),
                                    color: Colors.white,
                                    iconSize: 30,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 130,
                                    child: Text(
                                      "About Us",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'Poppins-Light',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, Main_Page.id);
                                      },
                                      icon: const Icon(
                                        CupertinoIcons.wifi_slash,
                                        color: Colors.white,
                                      ),
                                      iconSize: 30,
                                    ),
                                  )
                                ],
                              ),
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
                color: kSecondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 150,
                          width: 200,
                          child: Image.asset(
                            'assets/images/pharmacylogo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Text(
                            'This App is an On-Demand Medicine Ordering App that allows users to buy drugs online. With this app, users get to interact with pharmacist and let them know how they feel to get an appropriate prescribed drug to purchase',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 14,
                                fontFamily: 'Poppins-Light'),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          height: 350,
                          child: ListView.builder(
                              padding: EdgeInsets.all(20),
                              itemCount: labels.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: ListTile(
                                        leading: Icon(
                                          icons2[index],
                                          color: Colors.teal,
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.teal,
                                          size: 20,
                                        ),
                                        title: Text(
                                          labels2[index],
                                          style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 18,
                                            fontFamily: 'Poppins-Light',
                                          ),
                                        ),
                                        onTap: () {}),
                                  ),
                                );
                              }),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
