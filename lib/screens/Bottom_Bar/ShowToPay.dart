import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

// ignore: use_key_in_widget_constructors
class ShowToPayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,title: 'Back'),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Scan',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate back to the previous screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Show to pay',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
 Padding(
              padding: const EdgeInsets.only(top: 150, right: 20.0,left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/Qr.png',
                    width: 150,
                    height: 150,
                  ),
                  Image.asset(
                    'assets/barcode.png',
                    width: 150,
                    height: 100,
                  ),
               const Text('Using balance first',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)
                ],
              ),
            ),
          
        ],
      ),
    );
  }
}
