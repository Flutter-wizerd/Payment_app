import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/MoreScreen/OffersScreen.dart';
import 'package:payment_app/screens/Card_Screens/TopUpSCreens/TopUpScreen.dart';
import 'package:payment_app/screens/Card_Screens/TransferScreens/TransferScreen.dart';
import 'package:payment_app/widget/AppBar.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context, title: 'Back', centerTitle: 'More'),
      body: ListView(
        padding: const EdgeInsets.only(top: 12, bottom: 30, right: 16, left: 16),
        children: [
          const Row(
            children: [
              Text(
                'Main Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Spacer(),
              Text(
                'Edit Menu',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _buildFirstItems(
                  context,
                  title: 'Transfer',
                  icon: Icons.swap_horiz,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransferScreen(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildFirstItems(
                  context,
                  title: 'Top Up',
                  icon: Icons.account_balance_wallet,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TopUpScreen(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildFirstItems(
                  context,
                  title: 'Request',
                  icon: Icons.arrow_downward,
                  onTap: () {
                    // Handle navigation to Request screen
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            'Payment List',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Phone bills',
                  icon: Icons.phone_iphone,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Internet & fixed phone',
                  icon: Icons.wifi,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Offers',
                  icon: Icons.local_offer,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OffersScreen(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Online Tickets',
                  icon: Icons.airplane_ticket_outlined,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Withdraw',
                  icon: Icons.monetization_on,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Electricity',
                  icon: Icons.lightbulb,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Water',
                  icon: Icons.water_drop,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Insurance',
                  icon: Icons.security,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Education',
                  icon: Icons.school,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Invest',
                  icon: Icons.data_exploration,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Donate',
                  icon: Icons.favorite,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'E-Commerce',
                  icon: Icons.shopping_bag,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildSecondItems(
                  context,
                  title: 'Game Voucher',
                  icon: Icons.videogame_asset,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFirstItems(BuildContext context,
      {required String title,
      required IconData icon,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.deepPurple),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSecondItems(BuildContext context,
      {required String title,
      required IconData icon,
      required VoidCallback onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: 45, color: Colors.deepPurple),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
