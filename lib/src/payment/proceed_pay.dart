import 'package:flutter/material.dart';
import 'package:flutter_project/src/payment/payment_screen.dart';

class ProceedPayScreen extends StatefulWidget {
  const ProceedPayScreen({super.key});

  @override
  State<ProceedPayScreen> createState() => _ProceedPayScreenState();
}

enum SingingCharacter { lafayette, jefferson }

class _ProceedPayScreenState extends State<ProceedPayScreen> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Delivery",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Address details",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle change action
                      },
                      child: const Text(
                        "Change",
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 74, 12)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    // margin: EdgeInsets.all(16),
                    color: Colors.white,
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 30, right: 90),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Marvis Kparobo",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: double.infinity,
                            // height: 2,
                            // width: 170,
                            decoration: BoxDecoration(
                                // color: Colors.grey,
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 208, 207, 207))),
                          ),
                          const SizedBox(height: 8),
                          const Text("Km 5 refinery road oppsite re"),
                          const SizedBox(height: 8),
                          const Text("public road, effurun, delta state"),
                          const SizedBox(height: 8),
                          Container(
                            width: double.infinity,
                            // height: 2,
                            decoration: BoxDecoration(
                                // color: Colors.grey,
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 205, 205, 205))),
                          ),
                          const SizedBox(height: 8),
                          const Text("+234 9011039271"),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Delivery method",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    )),
                const SizedBox(
                  height: 16,
                ),
                Card(
                  color: Colors.white,
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 6),
                    child: Column(
                      children: [
                        RadioListTile<SingingCharacter>(
                          title: const Text('Lafayette'),
                          activeColor: const Color.fromARGB(255, 255, 74, 12),
                          value: SingingCharacter.lafayette,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            width: double.infinity,
                            // height: 2,
                            // width: 170,
                            decoration: BoxDecoration(
                                // color: Colors.grey,
                                border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 208, 207, 207))),
                          ),
                        ),
                        const SizedBox(height: 8),
                        RadioListTile<SingingCharacter>(
                          title: const Text('jefferson'),
                          activeColor: const Color.fromARGB(255, 255, 74, 12),
                          value: SingingCharacter.jefferson,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$23,000",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 74, 12),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentScreen()));
                      },
                      child: const Text(
                        "Proceed to payment",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
