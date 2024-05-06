// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/TransferScreens/ToFriend.dart/ContactScreen.dart';
import 'package:payment_app/widget/AvatarColumn.dart';
import 'package:payment_app/widget/AvatarRow.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 170),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Send Again',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.greenAccent,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(width: 4), // Add space between text and arrow
                      Icon(
                        Icons.arrow_forward,
                        size: 12,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          AvatarRow(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  children: [
                    Text(
                      'See all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.greenAccent,
                          decoration: TextDecoration.underline),
                    ),
                    SizedBox(width: 4), // Add space between text and arrow
                    Icon(
                      Icons.arrow_forward,
                      size: 12,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          AvatarColumn(),
        ],
      ),
    );
  }
}
