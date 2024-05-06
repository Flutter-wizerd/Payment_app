import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {

  List<bool> _notificationStates = List.filled(8, true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,
          title: 'Back', centerTitle: 'Notifications'),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          _buildNotificationTile('Allow notifications', 0),
          const Divider(),
          _buildNotificationTile('Transactions', 1),
          const Divider(),
          _buildNotificationTile('Authorization on ATM', 2),
          const Divider(),
          _buildNotificationTile('Authorization on POS', 3),
          const Divider(),
          _buildNotificationTile('Confirmation request', 4),
          const Divider(),
          _buildNotificationTile('Money request', 5),
          const Divider(),
          _buildNotificationTile('Offers', 6),
          const Divider(),
          _buildNotificationTile('Our latest updates', 7),
        ],
      ),
    );
  }

  Widget _buildNotificationTile(String title, int index) {
    if (index < 0 || index >= _notificationStates.length) {
      return const SizedBox();
    }
    return ListTile(
      leading: const Icon(Icons.notifications),
      title: Text(
        title,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      trailing: Switch(
        value: _notificationStates[index],
        onChanged: (bool value) {

          setState(() {
            _notificationStates[index] = value;
          });
        },
          
      ),
    );
  }
}