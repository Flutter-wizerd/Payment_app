// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payment_app/screens/Card_Screens/TransferScreens/ToFriend.dart/InfoContact.dart';
import 'package:payment_app/widget/AppBar.dart';

class Contact {
  final String name;
  final String phone;
  final String avatar;

  Contact({required this.name, required this.phone, required this.avatar});
}

class ContactScreen extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'Anes', phone: '+213-709-824-432', avatar: 'assets/anes.png'),
    Contact(name: 'Bahaa', phone: '+213-709-824-432', avatar: 'assets/bahaa.png'),
    Contact(name: 'Cerine', phone: '+213-709-824-432', avatar: 'assets/cerine.png'),
    Contact(name: 'Lina', phone: '+213-709-824-432', avatar: 'assets/lina.png'),
    Contact(name: 'Noufel', phone: '+213-709-824-432', avatar: 'assets/noufel.png'),
    Contact(name: 'Fares', phone: '+213-709-824-432', avatar: 'assets/fares.png'),
    Contact(name: 'Sofian', phone: '+213-709-824-432', avatar: 'assets/sofian.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(
        context,
        title: 'Back',
        centerTitle: 'Contact',
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search for phone number',
                                border: InputBorder.none,
                                isDense: true,
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 163, 130, 251),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add, color: Colors.deepPurple),
                      onPressed: () {
                        // Add your functionality here
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Expanded(
              child: ListView.separated(
                itemCount: contacts.length,
                separatorBuilder: (BuildContext context, int index) => Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (contacts[index].name == 'Fares') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => InfoContactScreen()),
                        );
                      }
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(contacts[index].avatar),
                      ),
                      title: Text(contacts[index].name),
                      subtitle: Text(contacts[index].phone),
                      trailing: Icon(Icons.arrow_forward_ios, size: 18,),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
