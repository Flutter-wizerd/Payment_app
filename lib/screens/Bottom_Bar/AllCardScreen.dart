import 'package:flutter/material.dart';
import 'package:payment_app/screens/Bottom_Bar/CardDetailScreen.dart';
import 'package:payment_app/screens/Card_Screens/TopUpSCreens/YourWallet.dart';
import 'package:payment_app/widget/AppBar.dart';

class AllCardScreen extends StatelessWidget {
  const AllCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context, title: 'Back', centerTitle: 'Your wallet'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CreditCard(
                          imagePath: 'assets/Card 1.png',
                          onTap: (imagePath) {
                            navigateToCardDetail(context, imagePath);
                          },
                        ),
                        CreditCard(
                          imagePath: 'assets/Card 2.png',
                          onTap: (imagePath) {
                            navigateToCardDetail(context, imagePath);
                          },
                        ),
                        CreditCard(
                          imagePath: 'assets/Card 3.png',
                          onTap: (imagePath) {
                            navigateToCardDetail(context, imagePath);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wifi,
                  size: 64,
                  color: Colors.grey,
                ),
                SizedBox(height: 16),
                Text(
                  'Move near a device to pay',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.qr_code, color: Colors.white, size: 25),
              label: const Text(
                'QR Pay',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Adjust the value as needed
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToCardDetail(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CardDetailScreen(imagePath: imagePath),
      ),
    );
  }
}
