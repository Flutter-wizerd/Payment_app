import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/TopUpSCreens/TopUpScreen.dart';
import 'package:payment_app/screens/Card_Screens/MoreScreen/MoreScreen.dart';
import 'package:payment_app/screens/Card_Screens/TransferScreens/TransferScreen.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 140, right: 10, left: 10),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCircleIcon(
                Icons.transfer_within_a_station,
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransferScreen()),
                ),
              ),
              _buildCircleIcon(
                Icons.account_balance_wallet,
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopUpScreen()),
                ),
              ),
              // No navigation for the "Request" icon
              _buildCircleIcon(
                Icons.arrow_downward,
                () {},
              ),
              _buildCircleIcon(
                Icons.more_horiz,
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MoreScreen()),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Transfer', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Top Up', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Request', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('More', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(IconData iconData, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40, // Set width and height of the circular container
        height: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.deepPurple, // Set the color of the circle
        ),
        child: Center(
          child: Icon(
            iconData,
            color: Colors.white, // Set the color of the icon
            size: 20, // Set the size of the icon
          ),
        ),
      ),
    );
  }
}
