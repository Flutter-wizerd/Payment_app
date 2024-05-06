import 'package:flutter/material.dart';

class AvatarColumn extends StatelessWidget {
  const AvatarColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              buildRow(Icons.compare_arrows, 'Transfer', -5000.00, 'Yesterday 19:12'),
              buildRow(Icons.account_balance_wallet, 'Top Up', 11000.00, 'May 29,2023 19:12'),
              buildRow(Icons.wifi, 'Transfer', -1620.00, 'Juin 05,2023 10:43'),
              buildRow(Icons.water_drop, 'Water', -2400.00, 'juin 12,2023 12:37'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(IconData iconData, String text, double amount, String dateText) {
    Color amountColor = amount >= 0 ? Colors.green : Colors.red;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: Center(
                  child: Icon(
                    iconData,
                    color: Colors.deepPurple,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dateText,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${amount >= 0 ? '+' : ''}${amount.toStringAsFixed(2)} DZD',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: amountColor, // Set text color based on amount sign
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
