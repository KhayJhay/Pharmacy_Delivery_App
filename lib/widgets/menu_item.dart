import 'package:flutter/material.dart';
class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  
  const MenuItem({Key? key, required this.title,  required this.icon, VoidCallback? onClicked,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 30,),
            SizedBox(width: 16,),
            Expanded(child: Text(title, style: TextStyle(fontFamily: 'Poppins-Light', fontSize: 18, color: Colors.white, letterSpacing: 2),))
          ],
        ),
      ),
    );
  }
}
