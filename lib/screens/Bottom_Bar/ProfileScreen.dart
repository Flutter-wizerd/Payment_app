import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Profile Settings',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile photo.png'),
                ),
                SizedBox(height: 8),
                Text(
                  'Amine Dahas',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
                ),
                Text(
                  'Joined 2 years ago',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.person, color: Colors.deepPurpleAccent),
              title: Text(
                'Full name',
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: Text('Amine Dahas', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
              trailing: Icon(Icons.arrow_forward_ios,size: 18),
            ),
            const Divider(indent: 20),
            const ListTile(
              leading: Icon(Icons.phone_android, color: Colors.greenAccent),
              title: Row(
                children: [
                  Text('Mobile', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 8),
                  Text('Verified', style: TextStyle(color: Colors.green)),
                ],
              ),
              subtitle: Text('+213 780 100 054', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
              trailing: Icon(Icons.arrow_forward_ios,size: 18),
            ),
            const Divider(indent: 20),
            const ListTile(
              leading: Icon(Icons.email, color: Colors.lightGreen),
              title: Row(
                children: [
                  Text('Email', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 8),
                  Text('Verified', style: TextStyle(color: Colors.green)),
                ],
              ),
              subtitle: Text('dahasamine009@gmail.com', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
              trailing: Icon(Icons.arrow_forward_ios,size: 18),
            ),
            const Divider(indent: 20),
            const ListTile(
              leading: Icon(Icons.monochrome_photos),
              title: Text(
                'Appearance',
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: Text('Light', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
              trailing: Icon(Icons.arrow_forward_ios,size: 18),
            ),
            const SizedBox(height: 12),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Align the text to the start horizontally
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0), // Add padding to align text to the start
                    child: ListTile(
                      title: Text(
                        'Account details',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
