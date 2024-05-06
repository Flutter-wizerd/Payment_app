import 'package:flutter/material.dart';
import 'package:payment_app/Login_Screens/Oppening.dart';
import 'package:payment_app/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Define initialRoute and routes
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => OppeningScreen(),
      },
    );
  }
}
