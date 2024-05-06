import 'package:flutter/material.dart';
import 'package:payment_app/Setting_Screens/Help.dart';
import 'package:payment_app/Setting_Screens/LanguageScreen.dart';
import 'package:payment_app/Login_Screens/Oppening.dart';
import 'package:payment_app/Setting_Screens/PrivacyScreen.dart';
import 'package:payment_app/Setting_Screens/ReportBug.dart';
import 'package:payment_app/Setting_Screens/VerificationScreen.dart';
import 'package:payment_app/Setting_Screens/notification.dart';
import 'package:payment_app/widget/AppBar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,
          title: 'Back',centerTitle: 'Settings'),
      body: Container(
        padding: const EdgeInsets.only(right: 15, left: 15,bottom: 20),
        child: ListView(
          children: [
            _buildHelpAndReportBugTiles(context),
            const SizedBox(height: 8),
            const Text(
              'Settings',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            _buikSettingsTiles(context),
            const SizedBox(height: 8),
            const Text(
              'OTHER',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            _buildFeesAndAboutTiles(),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OppeningScreen()),);
              },
              style: ElevatedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.grey.shade100,
              ),
              child: const Text(
                'LOG ME OUT',
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }

  Widget _buildHelpAndReportBugTiles(BuildContext context) {
    return _buildGroupedTiles(
      children: [
        ListTile(
          leading: const Icon(
            Icons.help,
            color: Colors.blue,
            size: 30,
          ),
          title: const Text(
            'Help',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpScreen()),
            );
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.bug_report,
            color: Colors.deepOrange,
            size: 30,
          ),
          title: const Text(
            'Report a bug',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReportBugScreen()),
            );
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  Widget _buikSettingsTiles(BuildContext context) {
    return _buildGroupedTiles(
      children: [
        ListTile(
          leading: const Icon(
            Icons.verified,
            color: Colors.deepPurple,
            size: 30,
          ),
          title: const Text(
            'Verification',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
                    onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VerificationScreen()),
            );
          },
          trailing: const Text(
            'Completed',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          ),

        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.notification_add_rounded,
            color: Color.fromARGB(185, 244, 54, 54),
            size: 30,
          ),
          title: const Text(
            'Notifications',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationsScreen()));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.language,
            color: Colors.blueAccent,
            size: 30,
          ),
          title: const Text(
            'Language',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const LanguageScreen()));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.lock_person,
            color: Colors.blue,
            size: 30,
          ),
          title: const Text(
            'Privacy and security',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const PrivacyAndSecurityScreen()));
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  Widget _buildFeesAndAboutTiles() {
    return _buildGroupedTiles(
      children: [
        ListTile(
          leading: const Icon(
            Icons.money_off,
            color: Colors.blueGrey,
            size: 30,
          ),
          title: const Text(
            'Fees',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            // Handle Fees onTap
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.error,
            color: Colors.blue,
            size: 30,
          ),
          title: const Text(
            'About',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            // Handle About onTap
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.delete_sharp,
            color: Colors.redAccent,
            size: 30,
          ),
          title: const Text(
            'Delete my account',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            // Handle Delete my account onTap
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  Widget _buildGroupedTiles({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }
}
