import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

// ignore: use_key_in_widget_constructors
class PaysitCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context, title: 'Back'),
      body: Padding(
        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Chose your Debit card',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
           const SizedBox(height: 8),
           Card(
              color: Colors.grey.shade400,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'DIGITAL',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'A card that lives online and works everywhere.\nEasy, secure, and always with you.',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Add your action here
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey),
                          ),
                          child: const Text(
                            'Free',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/Paysit.png',
                      height: 170,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 20),
                    const Divider(
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Add your action here
                      },
                      child: const Row(
                        children: [
                          Text(
                            'Get it now',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
Expanded(
  child: Card(
    color: Colors.grey.shade400,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'PHYSICAL',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}
