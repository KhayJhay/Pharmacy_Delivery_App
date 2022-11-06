import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy_delivery_app/screens/Menu/main_page.dart';
import 'package:pharmacy_delivery_app/widgets/orderCard.dart';

import '../../contants.dart';

class Home_Page extends StatefulWidget {
  static String id = 'home_page';
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
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
                          kPrimaryColor,
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
                                    !menuOpen
                                        ? IconButton(
                                            onPressed: () {
                                              scale = 0.6;
                                              tranx = size.width - 100;
                                              transy = (size.height -
                                                      size.height * scale) /
                                                  2;
                                              setState(() {
                                                menuOpen = true;
                                              });
                                            },
                                            icon: const Icon(CupertinoIcons
                                                .slider_horizontal_3),
                                            color: Colors.white,
                                            iconSize: 30,
                                          )
                                        : IconButton(
                                            onPressed: () {
                                              scale = 1;
                                              tranx = 0;
                                              transy = 0;
                                              setState(() {
                                                menuOpen = false;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.white,
                                              size: 30,
                                            )),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          130,
                                      child: Text(
                                        "DashBoard",
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
                        height: 60,
                      ),
                      Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 8.0, bottom: 5.0, top: 15.0),
                            child: Text("Daily Summary", style: mainHeader),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 140,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    _dashoardCard(
                                        '20',
                                        'Total Orders',
                                        Icons.shopping_cart,
                                        Colors.teal.shade200),
                                    const SizedBox(width: 10),
                                    _dashoardCard(
                                        '1900.00',
                                        'Total Sales',
                                        Icons.credit_card_sharp,
                                        Colors.teal.shade200),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // new orders title
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 8.0, bottom: 5.0, top: 15.0),
                            child: Text("New Order", style: mainHeader),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 280,
                            padding: const EdgeInsets.only(
                                left: 5.0, right: 5, top: 3),
                            child: OrderCard(
                              isAccepted: true,
                            ),
                          ),
                          // summary of recent orders status
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 8.0, bottom: 5.0, top: 15.0),
                            child: Text("Recent Orders", style: mainHeader),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            child: SingleChildScrollView(
                              child: DataTable(
                                columns: [
                                  DataColumn(label: tableRowText('ORDER_ID')),
                                  DataColumn(label: tableRowText('PRICE')),
                                  DataColumn(label: tableRowText('STATUS')),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(tableColText('#1qaw2')),
                                    DataCell(tableColText('120.00')),
                                    DataCell(tableColStatusText(
                                        'Pending', Colors.yellow.shade600)),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(tableColText('#1qaw2')),
                                    DataCell(tableColText('130.00')),
                                    DataCell(tableColStatusText(
                                        'Completed', Colors.green.shade600)),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(tableColText('#1qaw2')),
                                    DataCell(tableColText('120.00')),
                                    DataCell(tableColStatusText(
                                        'Cancelled', Colors.red.shade600)),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(tableColText('#1qaw2')),
                                    DataCell(tableColText('10.00')),
                                    DataCell(tableColStatusText(
                                        'Completed', Colors.green.shade600)),
                                  ]),
                                ],
                              ),
                            ),
                          ),
                        ],
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

  _dashoardCard(String number, String title, IconData icon, Color colour) =>
      Expanded(
        child: Card(
          elevation: 7.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.teal,
                  Colors.tealAccent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    //icon card title
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Icon(icon, size: 20),
                        decoration: BoxDecoration(
                          color: colour,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins-SemiBold',
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                  child: Text(
                    number,
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins-ExtraBold',
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
