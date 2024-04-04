import 'package:clone_wave/pages/parametre_page.dart';
import 'package:flutter/material.dart';

import '../widgets/transaction_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            pinned: true,
            backgroundColor: const Color.fromARGB(255, 96, 33, 243),
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ParametrePage(),
                      ));
                },
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.white,
                )),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 25),
                obscureText
                    ? const Text("••••••••",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))
                    : const Text(
                        "3000000f",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: obscureText
                        ? const Icon(
                            Icons.visibility,
                            color: Colors.white,
                          )
                        : const Icon(Icons.visibility_off,
                            color: Colors.white)),
                const SizedBox(width: 25)
              ],
            ),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 365,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 209, 207, 207),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 140,
                        color: const Color.fromARGB(255, 96, 33, 243),
                      ),
                      Positioned(
                        top: 115,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 240,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 80),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(41, 7, 234, 0.292),
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/profil_1.png"))),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(132, 255, 224, 130),
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/panier_fruits_1.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(133, 255, 147, 130),
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/banque_rouge_1_resize.png"))),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Transfert",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Paiements",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Banque",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 35),
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(18),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/carte_wave.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                transactionWidget(
                    name: "Retrait",
                    date: "18 nov., 2023",
                    price: "-2000F",
                    context: context),
                transactionWidget(
                    name: "Paiement DJAMO * Connektt4",
                    date: "15 nov., 2023",
                    price: "-3000F",
                    context: context),
                transactionWidget(
                    name: "Paiement DJAMO * Conn",
                    date: "15 nov., 2023",
                    price: "-9000F",
                    context: context),
                transactionWidget(
                    name: "Paiement DJAMO * Conn",
                    date: "15 nov., 2023",
                    price: "-7600F",
                    context: context),
                transactionWidget(
                    name: "Paiement DJAMO * Conn",
                    date: "15 nov., 2023",
                    price: "-7000F",
                    context: context),
                transactionWidget(
                    name: "Paiement DJAMO * Conn",
                    date: "15 nov., 2023",
                    price: "-1200F",
                    context: context),
                transactionWidget(
                    name: "Paiement DJAMO * Conn",
                    date: "15 nov., 2023",
                    price: "-1000F",
                    context: context),
                transactionWidget(
                    name: "Paiement DJAMO * Conn",
                    date: "15 nov., 2023",
                    price: "-5000F",
                    context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
