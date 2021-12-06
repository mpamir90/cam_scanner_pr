import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late final CameraController _cameraController;

  @override
  void initState() {
    // Get front camera
    final frontCamera = cameras
        .where((e) => e.lensDirection == CameraLensDirection.front)
        .first;

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
            color: Colors.black,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
