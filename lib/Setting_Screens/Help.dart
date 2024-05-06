import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,
          title: 'Back',centerTitle: 'Help'),
      body: const Center(
        child: Text('This is the Help Screen'),
      ),
    );
  }
}
