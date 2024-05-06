import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class CardConfirmationScreen extends StatelessWidget {
  const CardConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          newMethod(context, title: 'Back', centerTitle: 'Card information'),
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Text(
                    'Physical Card',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  Spacer(),
                  Text(
                    '****3245',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'The last four numbers of the main card',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 70,),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Text('PAYSIT',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                  Spacer(),
                  Text(
                    '****4801',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'The last four numbers will identify PAYSIT transactions made with this card',
                  style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
