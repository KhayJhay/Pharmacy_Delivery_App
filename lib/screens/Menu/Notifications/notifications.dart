import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_delivery_app/contants.dart';
import 'package:pharmacy_delivery_app/screens/Menu/Notifications/notificationsTiles.dart';
import 'package:pharmacy_delivery_app/screens/Menu/main_page.dart';
import 'package:pharmacy_delivery_app/widgets/layout_screen.dart';

class Notifications_Screen extends StatelessWidget {
  const Notifications_Screen({Key? key}) : super(key: key);

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
                                      "Notifications",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        height: 650,
                        child: ListView.separated(
                            physics: const ClampingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return NotificationTiles(
                                  title: 'Successful Delivery',
                                  subtitle:
                                      'You have completed delivery succesfuly',
                                  enable: true,
                                  onTap:
                                      () {} /*=> Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NotificationPage(
                            UniqueKey(),
                          ))), */
                                  );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider();
                            }),
                      ),
                    ),
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
