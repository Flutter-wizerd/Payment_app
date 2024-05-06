import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:payment_app/widget/AppBar.dart';

class IdentityCardScreen extends StatefulWidget {
  const IdentityCardScreen({super.key});

  @override
  _IdentityCardScreenState createState() => _IdentityCardScreenState();
}

class _IdentityCardScreenState extends State<IdentityCardScreen> {
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
                  _cameraPreviewWidget(), // Use a widget to show camera preview or image
            ),
            const Center(
              child: Text(
                'Take a photo of the front side of\nyour identity Card',
                textAlign: TextAlign.center, // Align the text to center
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                  child: const Icon(Icons.camera_alt,
                      size: 40), // Use a camera icon
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
      width: double.infinity, // Adjust width to fit the available space
      height: double.infinity, // Adjust height to fit the available space
      child: Image.asset(
        'assets/id_card.jpg', // Replace 'your_image.png' with your image asset path
        fit: BoxFit
            .contain, // Use BoxFit.contain to fit the image within the container
      ),
    );
  }
}
