import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,title: 'Back',centerTitle: 'My Address'),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Algeria',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(height: 12),
              _buildInfoRow('State or Province', 'Blida'),
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              _buildInfoRow('City', 'Chiffa'),
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(height: 12),
              _buildInfoRow('Address', 'Chiffa, Limon'),
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(height: 12),
              _buildInfoRow('House number', '44'),
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
              const SizedBox(height: 12),
              _buildInfoRow('Postal code', '09010'),
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
