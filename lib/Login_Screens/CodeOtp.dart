import 'package:flutter/material.dart';
import 'package:payment_app/HomePage.dart';
import 'package:payment_app/widget/AppBar.dart';
import 'package:payment_app/widget/ButtonShap.dart';

class EnterCodeScreen extends StatelessWidget {
  const EnterCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context, title: 'Back'),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter code',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'We\'ve sent an SMS with an activation code to your phone ********0054',
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: OTPInputBox()),
                SizedBox(width: 10),
                Expanded(child: OTPInputBox()),
                SizedBox(width: 10),
                Expanded(child: OTPInputBox()),
                SizedBox(width: 10),
                Expanded(child: OTPInputBox()),
                SizedBox(width: 10),
                Expanded(child: OTPInputBox()),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Add your code to handle the tap event here
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(
                    text: "Didn't receive a code?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            ButtonShap(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              backgroundColor: Colors.deepPurple,
              child: const Text(
                'Confirm',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPInputBox extends StatelessWidget {
  const OTPInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          counter: Offstage(),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
