import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final String? title;
  final Function? action;

  CustomBotton({
    this.title,
    this.action,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ()=>action,
      minWidth: 250.0,
      color: Colors.deepOrange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Text(
        title!,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
    );
  }
}

class SmallIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.8),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 80.0,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.8),
            child: Center(
              child: Icon(
                Icons.phone,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AcceptButton extends StatefulWidget {
  @override
  _AcceptButtonState createState() => _AcceptButtonState();
}

class _AcceptButtonState extends State<AcceptButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          setState(() {
            isActive = true;
          });
        },
        onLongPress: () {
          setState(() {
            isActive = false;
          });
        },
        minWidth: 170.0,
        color: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Row(
            children: [
          Icon(
            isActive == false
                ? Icons.assignment_turned_in_outlined
                : Icons.assignment_turned_in,
            color: Colors.white,
          ),
          SizedBox(width: 5,),
          Text(isActive == false ? "Accept" : "Accepted",
              style: TextStyle(fontFamily: 'Poppins-Light', fontSize: 14, color: Colors.white))
        ]));
  }
}

class CancelButton extends StatefulWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  _CancelButtonState createState() => _CancelButtonState();
}

class _CancelButtonState extends State<CancelButton> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        setState(() {
          isActive = true;
        });
      },
      minWidth: 170.0,
      color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Icon(
            isActive == false ? Icons.close : Icons.close_outlined,
          ),
          Text(isActive == false ? "Cancel" : "Cancelled",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
        ],
      ),
    );
  }
}
