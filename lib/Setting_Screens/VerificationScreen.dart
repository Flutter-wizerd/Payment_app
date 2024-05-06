import "package:flutter/material.dart";
import "package:payment_app/Setting_Screens/IdentityScreen.dart";
import "package:payment_app/Setting_Screens/MyAdress.dart";
import "package:payment_app/Setting_Screens/PassportScreen.dart";
import "package:payment_app/widget/AppBar.dart";

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context,
          title: 'Back', centerTitle: 'Personel Details'),
      body: Container(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: ListView(
          children: [
            const Text('MY DOCUMENTS',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey),),
            const SizedBox(height: 12),
            _buildMyDocumentsTile(context),
            const SizedBox(height: 80),
            const Text('MY ADDRESS',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey),),
            const SizedBox(height: 12),
            _buildMyAddressTiles(context,)
          ],
        ),
      ),
    );
  }

  Widget _buildGroupedTiles({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }

  Widget _buildMyDocumentsTile(BuildContext context) {
    return _buildGroupedTiles(
      children: [
        ListTile(
          leading: const Icon(Icons.badge, color: Colors.green, size: 30,),
        title: const Text('Identity card',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
       trailing: const Icon(Icons.arrow_forward_ios),
        onTap: (){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IdentityCardScreen()),);
        }
        ),
        const Divider(),
                ListTile(
          leading: const Icon(Icons.card_membership, color: Colors.red, size: 30,),
        title: const Text('Passport',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
       trailing: const Icon(Icons.arrow_forward_ios),
        onTap: (){
 Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PassportScreen()),);
        },
        ),
      ],
    );
  }
Widget _buildMyAddressTiles(BuildContext context){
  return _buildGroupedTiles(children: [
    ListTile(
      leading: const Icon(Icons.language_outlined,color: Colors.blue,size: 30,),
    title: const Text('Chiffa, limon 44',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    subtitle: const Text('Blida, Algeria'),
    trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
 Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddressScreen()),);
        },
    )
  ]);
}
}
