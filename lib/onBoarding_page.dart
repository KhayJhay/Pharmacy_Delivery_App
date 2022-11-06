import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy_delivery_app/login_signup/login_signup_screen.dart';

class OnBoarding_Page extends StatelessWidget {
  final style = TextStyle(fontSize: 26, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
            bodyWidget: Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30,),
              child: Center(
                child: Text(
                  "Hello, \nWelcome to the pharmacy delivery app",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins-Light',
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            image: Padding(
              padding: const EdgeInsets.only(top: 60.0,),
              child: Lottie.asset(
                "assets/lotties/delivlottie.json",
              ),
            ),
            footer: Text("Let's Get Started!!",style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 16,
              color: Colors.teal,
            ),),
            titleWidget: Text(
              "Pharmacy Delivery",
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Poppins-ExtraBold',
                color: Colors.teal,
              ),
            )),
        PageViewModel(
          titleWidget: Text("Fast Delivery",
              style: TextStyle(
                  fontSize: 26, fontFamily: 'Poppins-ExtraBold', color: Colors.teal
              )),
          bodyWidget: Center(
            child: Text(
              "Drugs should always be delivered to clients on time",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Poppins-Light',
                color: Colors.teal,
                letterSpacing: 2,
              ),
            ),
          ),
          image: Padding(
            padding: const EdgeInsets.only(top: 60.0,),
            child: Lottie.asset(
              "assets/lotties/fastdeliv.json",
            ),
          ),
        ),
        PageViewModel(
            titleWidget: Text("Safe Delivery of Drugs",
                style: TextStyle(
                  fontSize: 26, fontFamily: 'Poppins-ExtraBold', color: Colors.teal
                )),
            bodyWidget: Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30),
              child: Center(
                  child: Text(
                "Couriers should ensure that drugs are safely delivered to clients",
                    textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins-Light',
                  color: Colors.teal,
                  letterSpacing: 2,
                  fontSize: 26,
                ),
              )),
            ),
          image: Padding(
            padding: const EdgeInsets.only(top: 60.0,),
            child: Lottie.asset(
              "assets/lotties/safedeliv.json",
            ),
          ),)
      ],
      onDone: () {},
      showSkipButton: true,
      showNextButton: true,
      nextFlex: 1,
      dotsFlex: 2,
      skipFlex: 1,
      animationDuration: 1000,
      curve: Curves.fastOutSlowIn,
      dotsDecorator: DotsDecorator(
          spacing: EdgeInsets.all(5),
          activeColor: Colors.teal,
          // activeSize: Size.square(10),
          // size: Size.square(5),
          activeSize: Size(20, 10),
          size: Size.square(10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      skip: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.tealAccent],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  offset: Offset(4, 4))
            ]),
        child: Center(
          child: Text(
            "Skip",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      next: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.teal, width: 2)),
        child: Center(
          child: Icon(
            Icons.navigate_next,
            size: 30,
            color: Colors.teal,
          ),
        ),
      ),
      done: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Login_Signup_Screen()));
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.tealAccent, Colors.teal],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 40,
                    offset: Offset(4, 4))
              ]),
          child: Center(
            child: Text(
              "Done",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ));
  }
}
