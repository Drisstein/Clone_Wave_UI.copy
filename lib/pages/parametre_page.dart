// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParametrePage extends StatelessWidget {
  const ParametrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(181, 209, 207, 207),
        title: const Text(
          "Paramètres",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        color: const Color.fromARGB(181, 209, 207, 207),
        // color: Colors.green,
        child: SingleChildScrollView(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              // color: Colors.red,
              // margin: EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Partager",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 129, 127, 127),
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Container(
                      // height: double.infinity,

                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),

                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.share,
                              size: 35,
                            ),
                            title: Text(
                              "Inviter un ami à rejoindre Wave",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.star,
                              size: 35,
                            ),
                            title: Text(
                              "Utiliser le code promotionnel",
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 240,
              width: double.infinity,
              // color: Colors.red,
              // margin: EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Support",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 129, 127, 127),
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Container(
                      // height: double.infinity,

                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),

                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.call,
                              size: 35,
                            ),
                            title: Text(
                              "Contactez le service client",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.note_alt_rounded,
                              size: 35,
                            ),
                            title: Text(
                              "Vérifiez votre plafond",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.location_on,
                              size: 35,
                            ),
                            title: Text(
                              "Trouver les agents à domicile",
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: double.infinity,
              // color: Colors.red,
              // margin: EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sécurité",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 129, 127, 127),
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Container(
                      // height: double.infinity,

                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),

                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.security,
                              size: 35,
                            ),
                            title: Text(
                              "Modifiez votre code secret",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              // height: double.infinity,

              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),

              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      size: 35,
                    ),
                    title: Row(
                      children: [
                        Text(
                          "Se déconnecter",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          " (05 03 02 038)",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: double.infinity,
              // color: Colors.blue,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("UBA",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Version 24.03.21-fd938b",
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Condition Générales | Avis de confidentialité",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
