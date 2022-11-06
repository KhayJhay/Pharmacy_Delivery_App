import 'package:flutter/material.dart';

import 'orderCard.dart';

class Ongoing_Orders extends StatelessWidget {
  const Ongoing_Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 280,
      padding: const EdgeInsets.only(left: 5.0, right: 5, top: 3),
      /*decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal,
              Colors.tealAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
          */
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              OrderCard(
                isAccepted: true,
              ),
              OrderCard(
                isAccepted: true,
              ),
              OrderCard(
                isAccepted: true,
              ),
            ],
          ),
        ],
      ),
      /*
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Kofi Asante',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Poppins-SemiBold'),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Today at 10:05am',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Order ID: 121',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Poppins-SemiBold'),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Total: GHC 70',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('ITEM')),
                        DataColumn(label: Text('QTY')),
                        DataColumn(label: Text('PRICE')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('Dalacin C')),
                          DataCell(Text('3')),
                          DataCell(Text(
                            'GHC 10',
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Paracetamol')),
                          DataCell(Text('2')),
                          DataCell(Text(
                            'GHC 4',
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Flagel')),
                          DataCell(Text('1')),
                          DataCell(Text(
                            'GHC 3',
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Lunart')),
                          DataCell(Text('1')),
                          DataCell(Text(
                            'GHC 10',
                          )),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Karen Oppong',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Poppins-SemiBold'),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: '12 / 02/ 2022',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Order ID: 121',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Poppins-SemiBold'),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Total: GHC 70',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('ITEM')),
                        DataColumn(label: Text('QTY')),
                        DataColumn(label: Text('PRICE')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('Dalacin C')),
                          DataCell(Text('3')),
                          DataCell(Text(
                            'GHC 10',
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Paracetamol')),
                          DataCell(Text('2')),
                          DataCell(Text(
                            'GHC 4',
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Flagel')),
                          DataCell(Text('1')),
                          DataCell(Text(
                            'GHC 3',
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Lunart')),
                          DataCell(Text('1')),
                          DataCell(Text(
                            'GHC 10',
                          )),
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
    */
    );
  }
}
