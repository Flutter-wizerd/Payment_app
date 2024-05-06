import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrAtmScreen extends StatefulWidget {
  const QrAtmScreen({super.key});

  @override
  _QrScreenState createState() => _QrScreenState();
}

class _QrScreenState extends State<QrAtmScreen> {
  late QRViewController _controller;
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double qrSize = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Scan QR Code',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Container(
              width: qrSize,
              height: qrSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: QRView(
                  key: _qrKey,
                  onQRViewCreated: _onQRViewCreated,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Let\'s Scan A QR Code',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this._controller = controller;
    });
    _controller.scannedDataStream.listen((scanData) {
      
      print(scanData.code);
      
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ReceiptScreen(data: scanData.code)),
      );
    });
  }
}

class ReceiptScreen extends StatelessWidget {
  final String? data;

  const ReceiptScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receipt'),
      ),
      body: Center(
        child: Text(
          'QR Code Data: ${data ?? "No data found"}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
