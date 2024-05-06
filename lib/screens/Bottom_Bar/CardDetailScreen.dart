import 'package:flutter/material.dart';
import 'package:payment_app/screens/Bottom_Bar/CardConfirmation.dart';
import 'package:payment_app/widget/AppBar.dart';

class CardDetailScreen extends StatelessWidget {
  final String imagePath;

  const CardDetailScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,title: 'Back', centerTitle: 'Card details'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            height: 150,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          const RoundedListTile(
            title: "Website",
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const SizedBox(height: 20),
          RoundedListTile(
            title: "Card Confirmation",
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CardConfirmationScreen()),
    );
  },
          ),
          const SizedBox(height: 20),
          const RoundedListTile(
            title: "Privacy Policy",
            trailing: Icon(Icons.arrow_forward_ios),
             
          ),
          const SizedBox(height: 20),
                   const RoundedListTile(
            title: "Terms and Conditions",
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                // Remove card action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Remove Card',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedListTile extends StatelessWidget {
  final String title;
  final Widget trailing;
  final VoidCallback? onTap; // Add onTap callback

  const RoundedListTile({super.key, 
    required this.title,
    required this.trailing,
    this.onTap, // Make onTap optional
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Wrap with GestureDetector to handle taps
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w900),
          ),
          trailing: trailing,
        ),
      ),
    );
  }
}

