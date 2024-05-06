import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,title: 'Back', centerTitle: 'Your wallet'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CreditCard(
                    imagePath: 'assets/Card 1.png',
                    onTap: () {}, // Empty function or null
                  ),
                  CreditCard(
                    imagePath: 'assets/Card 2.png',
                    onTap: () {}, // Empty function or null
                  ),
                  CreditCard(
                    imagePath: 'assets/Card 3.png',
                    onTap: () {}, // Empty function or null
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Add money to PAYSIT balance',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CreditCard extends StatelessWidget {
  final String imagePath;
  final Function onTap;

  const CreditCard({super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(imagePath);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            width: 300,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
