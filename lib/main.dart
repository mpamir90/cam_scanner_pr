import 'package:cam_scanner/pages/crop_page/crop_page.dart';
import 'package:cam_scanner/pages/edit_page/edit_page.dart';
import 'package:cam_scanner/pages/get_started_page/get_started_page.dart';
import 'package:cam_scanner/pages/home_page/home_page.dart';
import 'package:cam_scanner/pages/scanner_page/scanner_page.dart';
import 'package:cam_scanner/pages/splash_page/splash_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Cam Scanner",
      home: EditPage(),
    );
  }
}
