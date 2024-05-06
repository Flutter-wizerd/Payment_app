import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/TransferScreens/OutsidePaysit/AddInfo.dart';
import 'package:payment_app/widget/AppBar.dart';

class AddRecipientScreen extends StatelessWidget {
  const AddRecipientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,
          title: 'Back',
          centerTitle: 'Transfer',
          titleColor: Colors.deepPurple,
          iconColor: Colors.deepPurple // Icon color here
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add account details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _buildTextField('Their email / number'),
            const SizedBox(height: 20),
            const Text(
              'Bank / post details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const SizedBox(height: 20),
            _buildTextField('Full name of the account holder'),
            const SizedBox(height: 20),
            _buildTextField('Account number'),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddInfo()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Confirm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 15.0, // Adjust vertical padding as needed
                  horizontal: 16.0, // Adjust horizontal padding as needed
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
