import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF209D95);
const kPrimaryLightColor = Color(0xFFE8F4F3);
const kSecondaryColor = Color(0xFFF9F9F9);

const trueSwitch =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal);
const falseSwitch = TextStyle(fontSize: 18, color: Colors.grey);

const authTestHeader = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

const mainHeader =
    TextStyle(fontFamily: 'Poppins-Light', fontSize: 22, color: Colors.teal);

const Textheader =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.teal);

const Textheader2 =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white);

const subHeader = TextStyle(
    fontSize: 38,
    fontWeight: FontWeight.w400,
    letterSpacing: 3,
    wordSpacing: 2);
const textsubHeader = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w300,
    letterSpacing: 3,
    color: Colors.white,
    wordSpacing: 2);

const orderText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing: 3,
    wordSpacing: 2);
const orderTextPrice = TextStyle(
  fontSize: 26,
  color: Colors.white,
  fontFamily: 'Poppins-Light',
  letterSpacing: 2,
);

const textSales =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.orange);
const salesTextFooter = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w400,
    letterSpacing: 3,
    wordSpacing: 2);

const korderDetail =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal);
const subOrderDetail =
    TextStyle(fontSize: 17, letterSpacing: 2, fontWeight: FontWeight.w400);

const foodcardPrice = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

const kpdetail = TextStyle(fontSize: 20, letterSpacing: 2, color: Colors.grey);

tableRowText(String title) => Text(title,
    style: TextStyle(
        fontSize: 14, color: Colors.teal, fontWeight: FontWeight.bold));

tableColText(String title) =>
    Text(title, style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic));

tableColStatusText(String title, Color colour) => Text(title,
    style: TextStyle(fontSize: 12, color: colour, fontStyle: FontStyle.italic));

final labels = [
  'Notifications',
  'My Orders',
  'Setting Account',
  'Help & Support',
  'About Us',
];

final labels2 = [
  'Version   10.0',
  'Contact Us',
  'Learn More',
  'Help & Support',
  'Rate Us',
];

final icons2 = [
  Icons.developer_mode,
  Icons.phone,
  Icons.book,
  Icons.help,
  Icons.star,
];

final icons = [
  Icons.notifications,
  Icons.payment,
  Icons.settings,
  Icons.help,
  Icons.info,
];
