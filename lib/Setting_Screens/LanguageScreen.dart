import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,title: 'Back',centerTitle: 'Language'),
      body: Container(
        padding: const EdgeInsets.only(top: 70,left: 20,right: 20,bottom: 30),
        child: _buildGroupedTiles(children: [
          const ListTile(
            title: Text('العربية',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          const ListTile(
            title: Text('English',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          const ListTile(
            title: Text('francais',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          ])
          )
    );
    
  }

  Widget _buildGroupedTiles({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }
}
