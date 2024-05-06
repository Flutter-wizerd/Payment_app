import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AvatarRow extends StatelessWidget {
  final List<String> avatarImages = [
    'assets/avatar_1.png',
    'assets/avatar_2.png',
    'assets/avatar_3.png',
    'assets/avatar_4.png',
    'assets/avatar_5.png',
  ];

  final List<String> avatarTitles = [
    'Ines',
    'Faress',
    'Meriem',
    'Ibrahim',
    'Mohamed',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DottedBorder(
                  dashPattern: const [4, 4],
                  strokeWidth: 2,
                  color: Colors.deepPurple,
                  borderType: BorderType.Circle,
                  radius: const Radius.circular(30),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Add More',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(
              avatarImages.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(avatarImages[index]),
                      radius: 30,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      avatarTitles[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
