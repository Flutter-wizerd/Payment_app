import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/TopUpSCreens/QrAtmScreen.dart';
import 'package:payment_app/widget/AppBar.dart';

class AtmsScreen extends StatelessWidget {
  const AtmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(
        context,
        title: 'Back',
        centerTitle: 'Manuel Top Up',
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 30),
            child: Text(
              'Map',
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white, // Set background color here if needed
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/store 1.png',
                width: 100,
                height: 100,
              ),
            ],
          ),
          const Center(
            child: Text(
              'Find a store or ATM to deposit cash at',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 60),
          Row(
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CashAtScreen()));
                  },
                  child: ListTile(
                    leading: Image.asset(
                      'assets/uno.png',
                    ),
                    title: const Text(
                      'Hypermarché',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CashAtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context, title: "Back", centerTitle: "Manual top up"),
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 22,
                    child: const Icon(Icons.person_search,
                        size: 34, color: Colors.black),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'By accound number',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(left: 46),
                child: Text(
                  "Deposit cash at our partner stores or ATMs, then enter your account number. You'll receive an SMS with a code, just type it in the ATM and get your money instantly.",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios,size: 15),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const QrAtmScreen()));
              },
              child: ListTile(
                title: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 22,
                      child: const Icon(Icons.qr_code_2, size: 34, color: Colors.black),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'By scan QR',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(left: 44),
                  child: Text(
                    "Deposit cash at our partner stores or ATMs, scan the QR code with your phone, receive an SMS with a code, type it in the ATM, and get your money instantly.",
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios,size: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
