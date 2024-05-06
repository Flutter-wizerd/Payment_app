import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:payment_app/widget/AppBar.dart';

class ScanCardScreen extends StatefulWidget {
  const ScanCardScreen({super.key});

  @override
  _ScanCardScreenState createState() => _ScanCardScreenState();
}

class _ScanCardScreenState extends State<ScanCardScreen> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _cameraController = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _cameraController.initialize();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(context, title: 'Back'),
      body: Container(
        padding: const EdgeInsets.only(top: 30, bottom: 80),
        child: Column(
          children: [
            Expanded(
              child:
                  _cameraPreviewWidget(), 
            ),
const Center(
  child: Text(
    'Scan the Card',
    textAlign: TextAlign.center, // Align the text to center
    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
  ),
),

            const SizedBox(height: 80),
            ClipOval(
              child: SizedBox(
                height: 80,
                width: 80,
                child: FloatingActionButton(
                  onPressed: () async {
                    try {
                      await _initializeControllerFuture;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CameraPreview(_cameraController),
                        ),
                      );
                    } catch (e) {
                      print(e);
                    }
                  },
                  backgroundColor: Colors.redAccent,
                  child: const Icon(Icons.camera_alt, size: 40), // Use a camera icon
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _cameraPreviewWidget() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/scan card.png',
        fit: BoxFit
            .contain,
      ),
    );
  }
}
