import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context, title: 'Back', centerTitle: 'Offers'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  AnnonceCard(imagePath: 'assets/Investment.png'),
                  AnnonceCard(imagePath: 'assets/Red bus.png'),
                  AnnonceCard(imagePath: 'assets/Gift card.png'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 13, right: 13, bottom: 13),
              child: ListTile(
                contentPadding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.grey),
                ),
                tileColor: Colors.grey.shade100,
                leading: const CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  radius: 30,
                  child: Icon(
                    Icons.train,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Trains',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Book Travel',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Tickets with SNTF',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16,bottom: 10),
              child: Text(
                'Food',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  FoodCard(imagePath: 'assets/Food.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Daily Essentiels',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  FoodCard(imagePath: 'assets/Food1.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnnonceCard extends StatelessWidget {
  final String imagePath;

  const AnnonceCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          width: 300,
          height: 150,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String imagePath;

  const FoodCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
