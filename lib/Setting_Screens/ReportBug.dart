import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class ReportBugScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,
          title: 'Back',centerTitle: 'Report a Bug'),
      body: const Center(
        child: Text('This is the Report Bug Screen'),
      ),
    );
  }
}
