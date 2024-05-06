import 'package:flutter/material.dart';
import 'package:payment_app/Setting_Screens/Settings.dart';
import 'package:payment_app/screens/Bottom_Bar/ActivitiesScreen.dart';
import 'package:payment_app/screens/Bottom_Bar/CardsScreen.dart';
import 'package:payment_app/screens/Bottom_Bar/ProfileScreen.dart';
import 'package:payment_app/screens/Bottom_Bar/QrScanerScreen.dart';
import 'package:payment_app/widget/CardWidget.dart';
import 'package:payment_app/widget/StackWidget.dart';
import 'package:payment_app/widget/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: _currentIndex != 1 &&
              _currentIndex != 2 &&
              _currentIndex != 3 &&
              _currentIndex != 4
          ? AppBar(
              backgroundColor: Colors.deepPurple,
              elevation: 1,
              leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()),
                  );
                },
                child: const Icon(Icons.settings, color: Colors.white),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.emoji_events,
                          color: Colors.amber,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '1,972 Points',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : null,
      body: _buildBody(),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return _buildHomeScreen();
      case 1:
        return const CardsScreen();
      case 2:
        return const QrScreen();
      case 3:
        return ActivitiesScreen();
      case 4:
        return ProfileScreen();
      default:
        return const Scaffold();
    }
  }

  Widget _buildHomeScreen() {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.deepPurple,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  'Total balance',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '23,684.00 DZD',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
        const Positioned(
          child: StackWidget(),
        ),
        const Positioned(
          child: CardWidget(),
        ),
      ],
    );
  }
}
