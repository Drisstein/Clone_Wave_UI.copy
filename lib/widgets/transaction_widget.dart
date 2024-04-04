// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../pages/transaction_details_page.dart';

Widget transactionWidget(
    {required String name,
    required String date,
    required String price,
    required BuildContext context}) {
  return InkWell(
    // overlayColor: MaterialStatePropertyAll(Colors.blue[100]),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                TransactionDetailsPage(name: name, date: date, price: price)),
      );
    },
    child: Container(
      height: 90,
      width: double.infinity,
      // color: Colors.grey,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              padding: const EdgeInsets.only(
                left: 20,
                top: 15,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 119, 102, 158),
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            padding:
                const EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 30),
            child: Text(
              price,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 96, 33, 243),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
