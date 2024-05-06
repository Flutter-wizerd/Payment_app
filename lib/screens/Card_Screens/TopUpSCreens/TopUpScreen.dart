import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/TopUpSCreens/Atms.dart';
import 'package:payment_app/screens/Card_Screens/TopUpSCreens/DebitCard.dart';
import 'package:payment_app/screens/Card_Screens/TopUpSCreens/YourWallet.dart';
import 'package:payment_app/widget/AppBar.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,
          title: 'Back', centerTitle: 'Top Up'),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.only(left: 30, bottom: 30),
            child: const Text(
              'Choose your method',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const SizedBox(height: 10),
          _buildTopUpMethod(
            context,
            title: 'Debit card',
            icon: Icons.credit_card, // Debit card icon
            onTap: () {
             Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardDetailsScreen(),
                      ),
                    );
            },
          ),
          const SizedBox(height: 10),
          _buildTopUpMethod(
            context,
            title: 'Your wallet',
            icon: Icons.account_balance_wallet,
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WalletScreen(),
                      ),
                    );
            },
          ),
          const SizedBox(height: 10),
          _buildTopUpMethod(
            context,
            title: 'Manual top up at stores / ATMs',
            icon: Icons.store, // Store icon
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AtmsScreen(),
                      ),
                    );
            },
          ),
          const SizedBox(height: 10),
          _buildTopUpMethod(
            context,
            title: 'Cash a check',
            icon: Icons.receipt, // Cash check icon
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTopUpMethod(BuildContext context,
      {required String title,
      required IconData icon,
      required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      leading: Icon(
        icon,
        size: 40,
        color: Colors.deepPurple,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
