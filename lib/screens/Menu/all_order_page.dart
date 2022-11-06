import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_delivery_app/widgets/cancelled_orders.dart';
import 'package:pharmacy_delivery_app/widgets/layout_screen.dart';
import 'package:pharmacy_delivery_app/widgets/new_orders.dart';
import 'package:pharmacy_delivery_app/widgets/ongoing_orders.dart';
import 'package:pharmacy_delivery_app/widgets/past_orders.dart';

import '../../contants.dart';
import 'main_page.dart';

class MyOrders_Screen extends StatefulWidget {
  @override
  _MyOrders_ScreenState createState() => _MyOrders_ScreenState();
}

class _MyOrders_ScreenState extends State<MyOrders_Screen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int bottomTab = 0;

  var key;

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  bool menuOpen = false;
  double tranx = 0, transy = 0, scale = 1;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      transform: Matrix4.translationValues(tranx, transy, 0)..scale(scale),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 15,
                spreadRadius: 5),
          ],
          borderRadius: BorderRadius.circular(30)),
      child: Scaffold(
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
                                      width: MediaQuery.of(context).size.width -
                                          130,
                                      child: Text(
                                        "My Orders",
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
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 32,
                        child: TabBar(
                          onTap: (newIndex) {
                            print(newIndex);
                            setState(() {
                              currentIndex = newIndex;
                            });
                          },
                          unselectedLabelStyle: TextStyle(
                            color: Colors.deepPurple.shade300,
                            fontSize: 16,
                          ),
                          labelStyle: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                              fontFamily: 'Poppins-Light'),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.teal,
                          isScrollable: true,
                          labelColor: Colors.teal,
                          unselectedLabelColor: Colors.grey,
                          controller: _tabController,
                          tabs: <Widget>[
                            Tab(
                              text: "New Orders",
                            ),
                            Tab(
                              text: "Ongoing Orders",
                            ),
                            Tab(
                              text: "Past Orders",
                            ),
                            Tab(
                              text: "Cancelled Orders",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                        height: 600,
                        child: TabBarView(
                          children: [
                            New_Orders(),
                            Ongoing_Orders(),
                            Past_Orders(),
                            Cancelled_Orders(),
                          ],
                          controller: _tabController,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
