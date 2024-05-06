import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.deepPurple,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30), // Adjust the size here
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.credit_card, size: 30), // Adjust the size here
          label: 'Cards',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 40, // Adjust the container size
            height: 40, // Adjust the container size
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple,
            ),
            child: const Icon(Icons.qr_code, color: Colors.white, size: 30), // Adjust the size here
          ),
          label: 'QR Scanner',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.corporate_fare, size: 30), // Adjust the size here
          label: 'Activities',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 30), // Adjust the size here
          label: 'Profile',
        ),
      ],
    );
  }
}
