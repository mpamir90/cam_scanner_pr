import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import 'widgets/scanner_take_picture_button.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  late final CameraController _cameraController;

  @override
  void initState() {
    // Get front camera
    final frontCamera =
        cameras.where((e) => e.lensDirection == CameraLensDirection.back).first;

    // Create camera controller using front camera
    // if front camera null, use first camera
    _cameraController = CameraController(
      frontCamera,
      ResolutionPreset.max,
    );

    // Force ui to rebuild to show camera
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }

      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.flash_auto_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: CameraPreview(_cameraController),
          ),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Text("Photo"),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.collections,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    const ScannerTakePictureButton(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.rotate_left_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
