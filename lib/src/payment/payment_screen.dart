import 'package:flutter/material.dart';
import 'package:flutter_project/src/views/home_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

enum PaymentMethod { card, bankAccount }

enum DeliveryMethod { card, bankAccount }

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentMethod? _paymentMethod = PaymentMethod.card;
  DeliveryMethod? _deliveryMethod = DeliveryMethod.card;

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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Payment",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Payment method",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 16),
                _buildPaymentMethodCard(),
                const SizedBox(height: 20),
                const Text(
                  "Delivery method",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 14),
                _buildDeliveryMethodCard(),
                const SizedBox(height: 36),
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
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                _buildProceedButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentMethodCard() {
    return Card(
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          children: [
            RadioListTile<PaymentMethod>(
              title: _buildRadioTitle("Card", "assets/images/card.png"),
              activeColor: const Color.fromARGB(255, 255, 74, 12),
              value: PaymentMethod.card,
              groupValue: _paymentMethod,
              onChanged: (PaymentMethod? value) {
                setState(() {
                  _paymentMethod = value;
                });
              },
            ),
            _buildDivider(),
            RadioListTile<PaymentMethod>(
              title: _buildRadioTitle("Bank account", "assets/images/card.png"),
              activeColor: const Color.fromARGB(255, 255, 74, 12),
              value: PaymentMethod.bankAccount,
              groupValue: _paymentMethod,
              onChanged: (PaymentMethod? value) {
                setState(() {
                  _paymentMethod = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDeliveryMethodCard() {
    return Card(
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          children: [
            RadioListTile<DeliveryMethod>(
              title: const Text('Card'),
              activeColor: const Color.fromARGB(255, 255, 74, 12),
              value: DeliveryMethod.card,
              groupValue: _deliveryMethod,
              onChanged: (DeliveryMethod? value) {
                setState(() {
                  _deliveryMethod = value;
                });
              },
            ),
            _buildDivider(),
            RadioListTile<DeliveryMethod>(
              title: const Text('Bank account'),
              activeColor: const Color.fromARGB(255, 255, 74, 12),
              value: DeliveryMethod.bankAccount,
              groupValue: _deliveryMethod,
              onChanged: (DeliveryMethod? value) {
                setState(() {
                  _deliveryMethod = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioTitle(String text, String imagePath) {
    return Row(
      children: [
        Image.asset(imagePath, width: 40),
        const SizedBox(width: 6),
        Text(text),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 208, 207, 207),
          ),
        ),
      ),
    );
  }

  Widget _buildProceedButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 74, 12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {
          _dialogBuilder(context);
        },
        child: const Text(
          "Proceed to payment",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          contentPadding: const EdgeInsets.all(20.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Please note',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(height: 10.0),
              const Divider(),
              const SizedBox(height: 10.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'IDR 1,000,000',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '12-12-2024',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 74, 12),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      child: const Text(
                        "Proceed",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
