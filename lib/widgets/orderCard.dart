import 'package:flutter/material.dart';

import '../contants.dart';
import 'customButton.dart';

class OrderCard extends StatefulWidget {
  final bool isAccepted;
  const OrderCard({required this.isAccepted});
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  final bool _isAccepted = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          if (_isAccepted == widget.isAccepted) {}
        },
        child: Card(
          elevation: 8.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.teal,
                    Colors.tealAccent,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20.0)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      _detail('PersonName', 'Nii Opong Street', Icons.person)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _detail(
                      'PersonName', 'Accra, Airport hills', Icons.home)),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  bottom: 4,
                  top: 8,
                ),
                child: const Text('Price: Ghc 120.00', style: orderTextPrice),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AcceptButton(),
                        CancelButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

Column _detail(String name, String location, IconData icon) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Row(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(width: 10),
        Text(name,
            style: const TextStyle(
                color: Colors.white, fontFamily: 'Poppins-Light')),
        const SizedBox(width: 20),
        const Icon(Icons.add_location, color: Colors.white),
      ],
    ),
    const SizedBox(width: 10),
    Text(location, style: orderText)
  ]);
}
