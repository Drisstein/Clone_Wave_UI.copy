import 'package:flutter/material.dart';

class TransactionDetailsPage extends StatelessWidget {
  final String name;
  final String date;
  final String price;

  TransactionDetailsPage(
      {required this.name, required this.date, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(181, 209, 207, 207),
        // title: Text('Détails de la transaction'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(181, 209, 207, 207),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListTile(
                      title: Text(
                        price,
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        name,
                        style: const TextStyle(fontSize: 15),
                      ),
                      trailing: Image.asset("assets/images/download.png"),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ListTile(
                          title: const Text(
                            "Montant retiré",
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing:
                              Text(price, style: const TextStyle(fontSize: 18)),
                        ),
                        const ListTile(
                          title: Text(
                            "Frais",
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: Text("0", style: TextStyle(fontSize: 18)),
                        ),
                        const ListTile(
                          title: Text(
                            "Statut",
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing:
                              Text("Effectué", style: TextStyle(fontSize: 18)),
                        ),
                        const ListTile(
                          title: Text(
                            "Nom de l'agent",
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: Text("K.P.S (A33608_CI9)",
                              maxLines: 3, style: TextStyle(fontSize: 18)),
                        ),
                        ListTile(
                          title: const Text(
                            "Date et heure",
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: Text("$date 3h16 PM",
                              style: const TextStyle(fontSize: 18)),
                        ),
                        const ListTile(
                          title: Text(
                            "Nouveau solde",
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing:
                              Text("200000", style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 80,
              width: double.infinity,
              // color: Colors.red,
              child: const Center(
                  child: Text(
                "En patenaria avec UBA",
                style: TextStyle(color: Colors.grey),
              )),
            ),
          ),
        ],
      ),
    );
  }
}




    /**
      
     */