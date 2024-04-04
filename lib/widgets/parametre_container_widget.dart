import 'package:flutter/material.dart';

Text parametreTitleWidget({required String title}) {
  return Text(
    title,
    style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 129, 127, 127),
        fontSize: 18),
  );
}

Expanded parametreContainerWidget(
    {required IconData iconData1,
    required String comment1,
    required IconData iconData2,
    required String comment2}) {
  return Expanded(
    child: Container(
      // height: double.infinity,

      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: Icon(
              iconData1,
              size: 35,
            ),
            title: Text(
              comment1,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              iconData2,
              size: 35,
            ),
            title: Text(
              comment2,
              style: const TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    ),
  );
}
