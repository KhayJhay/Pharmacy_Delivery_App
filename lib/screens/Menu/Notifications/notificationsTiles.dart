import 'package:flutter/material.dart';
import 'package:pharmacy_delivery_app/contants.dart';

class NotificationTiles extends StatelessWidget {
  final String title, subtitle;
  final Function onTap;
  final bool enable;
  const NotificationTiles({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: kPrimaryColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            Icons.notifications_active,
            size: 24,
            color: Colors.teal,
          ),
        ),
      ),
      title: Text(title,
          style: TextStyle(color: Colors.teal, fontFamily: 'Poppins-SemiBold')),
      subtitle: Text(subtitle, style: TextStyle(color: kPrimaryColor)),
      onTap: () {},
      enabled: enable,
    );
  }
}
