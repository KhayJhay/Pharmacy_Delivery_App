import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy_delivery_app/contants.dart';
import 'package:pharmacy_delivery_app/sign_in/sign_in_screen.dart';

class Login_Signup_Screen extends StatelessWidget {
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
                  height: _height * 0.7,
                  width: _width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/bg.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: kPrimaryLightColor.withOpacity(.85)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 80.0,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Pharmacy Delivery",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins-ExtraBold',
                              color: kPrimaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60,
                              right: 60,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Lottie.asset("assets/lotties/delivlottie.json")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins-SemiBold',
                              color: kPrimaryColor,
                              letterSpacing: 3,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 30),
                            child: Text(
                              "Earn good money by delivering medicines,",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins-Light',
                                color: Colors.teal,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 30),
                            child: Text(
                              "and health stuffs accross the country",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins-Light',
                                color: Colors.teal,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: _height * 0.4,
              width: _width,
              decoration: BoxDecoration(
                  color: Color(0xFF209D95),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sign_In_Screen()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          height: 60,
                          width: _width - 78,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 15,
                                    spreadRadius: 5),
                              ]),
                          alignment: Alignment.center,
                          child: Text(
                            "LOG IN",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                                fontFamily: 'Poppins-Light',
                                letterSpacing: 2),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 18),
                        height: 60,
                        width: _width - 78,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 15,
                                  spreadRadius: 5),
                            ]),
                        alignment: Alignment.center,
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins-Light',
                              letterSpacing: 2),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip for now",
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                            ),
                          ))
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
