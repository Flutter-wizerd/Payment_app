import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/TransferScreens/OutsidePaysit/AddRecipient.dart';
import 'package:payment_app/widget/AppBar.dart';

class OutSidePaysitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      appBar: newMethod(
        context,
        title: 'Back',
        centerTitle: 'Outside Paysit',
        titleColor: Colors.white, 
        centerTitleColor: Colors.white,
        iconColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
                    const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Total balance',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '23,684.00 DZD',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    endIndent: 150,
                    indent: 150,
                    thickness: 3,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    leading: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 163, 130, 251),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add, color: Colors.deepPurple),
                        onPressed: () {
                          // Add your functionality here
                        },
                      ),
                    ),
                    title: const Text(
                      'Add a recipient',
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddRecipientScreen()),);
                    },
                  ),
                  const SizedBox(height: 30),
                  const Center(
                    child: Column(
                      children: [
                        Text(
                          'Set Amount',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '0 DZD',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    children: [
                      Text(
                        'Notes ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '(Optional)',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Replace with notes input widget
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey, // Border color here
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        border: InputBorder.none,
                        hintText: 'Write your notes here...',
                      ),
                      maxLines: 3,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add functionality for transferring
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'Transfer',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}