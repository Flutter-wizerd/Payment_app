import 'package:flutter/material.dart';

class ManualTopUpScreen extends StatelessWidget {
  const ManualTopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manual top up'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Manual top up',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            ManualTopUpOptionWidget(
              title: 'By account number',
              description:
                  'Deposit cash at our partner stores or ATMs, then enter your account number. You\'ll receive an SMS with a code, just type it in the ATM and get your money instantly.',
            ),
            SizedBox(height: 20.0),
            ManualTopUpOptionWidget(
              title: 'By scan QR',
              description:
                  'Deposit cash at our partner stores or ATMs, scan the QR code with your phone, receive an SMS with a code, type it in the ATM, and get your money instantly.',
            ),
          ],
        ),
      ),
    );
  }
}

class ManualTopUpOptionWidget extends StatelessWidget {
  final String title;
  final String description;

  const ManualTopUpOptionWidget({super.key, 
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
        onTap: () {
          // Handle option selection
        },
      ),
    );
  }
}
