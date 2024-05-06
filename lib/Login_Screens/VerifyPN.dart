import 'package:flutter/material.dart';
import 'package:payment_app/Login_Screens/CodeOtp.dart';
import 'package:payment_app/widget/AppBar.dart';
import 'package:payment_app/widget/ButtonShap.dart';
import 'package:payment_app/widget/TextInput.dart';

class VerifyPNScreen extends StatelessWidget {
  const VerifyPNScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context, title: 'Back'),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Verify your phone number with a code',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 30),
            const Text('Your Phone Number'),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '+123',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(child: TextInput()),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Spacer(),
            ButtonShap(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnterCodeScreen(),
                  ),
                );
              },
              backgroundColor: Colors.deepPurple,
              child: const Text(
                'Send code',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
