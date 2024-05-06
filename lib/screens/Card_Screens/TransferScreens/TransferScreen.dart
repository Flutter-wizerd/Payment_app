import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/TransferScreens/OutsidePaysit/OutsidePaysitScreen.dart';
import 'package:payment_app/screens/Card_Screens/TransferScreens/ToFriend.dart/ToFriendsScreen.dart';
import 'package:payment_app/widget/AppBar.dart';

class TransferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(
        context,
        title: 'Back',
        centerTitle: 'Transfer',
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Row(
            children: [
              Expanded(
                child: CardWidget(
                  title: 'To Friends',
                  icon: Icons.people,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransferToFriendsScreen(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CardWidget(
                  title: 'Outside Paysit',
                  icon: Icons.business,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>OutSidePaysitScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Latest Transfer',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _buildTransferTile(
            name: 'Anes',
            date: 'Yesterday 19:12',
            amount: '3,500.00 DZD',
          ),
          _buildTransferTile(
            name: 'Noufel',
            date: 'May 31, 2023 09:13',
            amount: '5,000.00 DZD',
          ),
          _buildTransferTile(
            name: 'algeriepost - No...',
            date: 'May 13, 2023 21:54',
            amount: '7,800.00 DZD',
          ),
          _buildTransferTile(
            name: 'Lina',
            date: 'April 27, 2023 20:29',
            amount: '2,000.00 DZD',
          ),
          _buildTransferTile(
            name: 'BNA - Ayoub Dah...',
            date: 'April 12, 2023 04:18',
            amount: '15,000.00 DZD',
          ),
          _buildTransferTile(
            name: 'BDL - Ibrahim Had...',
            date: 'April 12, 2023 04:18',
            amount: '13,200.00 DZD',
          ),
          _buildTransferTile(
            name: 'Fares',
            date: 'April 12, 2023 04:18',
            amount: '3,600.00 DZD',
          ),
        ],
      ),
    );
  }

  Widget _buildTransferTile(
      {required String name, required String date, required String amount}) {
    // Map the names to their corresponding image assets
    Map<String, String> avatarMap = {
      'Anes': 'assets/anes.png',
      'Noufel': 'assets/noufel.png',
      'algeriepost - No...': 'assets/algerpost.png',
      'Lina': 'assets/lina.png',
      'BNA - Ayoub Dah...': 'assets/BNA.png',
      'BDL - Ibrahim Had...': 'assets/BDL.png',
      'Fares': 'assets/fares.png',
    };

    // Get the corresponding image asset for the name, or a default image if not found
    String? avatarAsset = avatarMap.containsKey(name)
        ? avatarMap[name]
        : 'assets/default_avatar.png';

    return ListTile(
      leading: CircleAvatar(
        backgroundImage:
            AssetImage(avatarAsset!), // Set the image asset for the avatar
      ),
      title: Text(name),
      subtitle: Text(date),
      trailing: Text(
        amount,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const CardWidget(
      {required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.grey.shade400,
        elevation: 0, // Set elevation to 0 to remove the shadow
        child: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 30, color: Colors.deepPurple),
              const SizedBox(height: 8),
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
}
