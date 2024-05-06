import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:payment_app/screens/Bottom_Bar/AddCardScreen.dart';
import 'package:payment_app/screens/Bottom_Bar/AllCardScreen.dart';
import 'package:payment_app/screens/Bottom_Bar/PaysitCard.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My Cards',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ), // Title on the left
            Row(
              children: [
                const Text(
                  'Add Card',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddCardScreen()));
                    },
                    icon: const Icon(Icons.add, color: Colors.deepPurple))
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaysitCardScreen()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurpleAccent,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.deepPurple,
                            size: 36,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Get your PAYSIT Card',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AllCardScreen()),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Cards',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: CardSwiper(
                cardsCount: 3,
                cardBuilder:
                    (context, index, percentThresholdX, percentThresholdY) {
                  if (index == 0) {
                    return const TopCard();
                  } else {
                    return NormalCard(index: index);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/Card 1.png',
      fit: BoxFit.contain,
    );
  }
}

class NormalCard extends StatelessWidget {
  final int index;

  const NormalCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/Card ${index + 1}.png',
      fit: BoxFit.contain,
    );
  }
}
