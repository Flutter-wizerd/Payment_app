import 'package:flutter/material.dart';
import 'package:payment_app/widget/AppBar.dart';

class PrivacyAndSecurityScreen extends StatefulWidget {
  const PrivacyAndSecurityScreen({super.key});

  @override
  _PrivacyAndSecurityScreenState createState() => _PrivacyAndSecurityScreenState();
}

class _PrivacyAndSecurityScreenState extends State<PrivacyAndSecurityScreen> {
  bool _isFaceIdEnabled = false;
  bool _isAutoLockEnabled = false;
  bool _isPrivacyModeEnabled = false;
  bool _isExtraSecurityEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(
        context,
        title: 'Bsck',
centerTitle: 'Privacy and Security'
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: [
            _buildSectionHeader('SECURITY'),
            _buildGroupedTiles(
              children: [
                _buildSecurityTile('Change password', Icons.lock, false, false, null),
                const Divider(),
                _buildSecurityTile('Change lock PIN', Icons.lock, false, false, null),
                const Divider(),
                _buildSecurityTile('Use face ID to log in', Icons.face, true, _isFaceIdEnabled, (value) {
                  setState(() {
                    _isFaceIdEnabled = value;
                  });
                }),
                const Divider(),
                _buildSecurityTile('Auto lock security', Icons.timer, true, _isAutoLockEnabled, (value) {
                  setState(() {
                    _isAutoLockEnabled = value;
                  });
                }),
                const Divider(),
                _buildSecurityTile('Privacy mode', Icons.visibility, true, _isPrivacyModeEnabled, (value) {
                  setState(() {
                    _isPrivacyModeEnabled = value;
                  });
                }),
                const Divider(),
                _buildSecurityTile('2-step verification', Icons.verified, false, false, null),
                const Divider(),
                _buildSecurityTile('Extra security for transfers', Icons.lock, true, _isExtraSecurityEnabled, (value) {
                  setState(() {
                    _isExtraSecurityEnabled = value;
                  });
                }),
              ],
            ),
            const SizedBox(height: 20),
            _buildSectionHeader('PRIVACY'),
            _buildGroupedTiles(
              children: [
                _buildPrivacyTile('Privacy Policy', Icons.policy, false),
                const Divider(),
                _buildPrivacyTile('Biometric data', Icons.biotech, false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
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

  Widget _buildSecurityTile(String title, IconData icon, bool isSwitch, bool switchValue, ValueChanged<bool>? onChanged) {
    return ListTile(
      title: Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
      leading: Icon(icon,size: 30,),
      trailing: isSwitch
          ? Switch(
              value: switchValue,
              onChanged: onChanged,
            )
          : const Icon(Icons.arrow_forward_ios),
    );
  }

  Widget _buildPrivacyTile(String title, IconData icon, bool isSwitch) {
    return ListTile(
      title: Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
      leading: Icon(icon,size: 30,),
      trailing: isSwitch ? Switch(
        value: true,
        onChanged: (bool value) {
        },
      ) : const Icon(Icons.arrow_forward_ios),
    );
  }
}
