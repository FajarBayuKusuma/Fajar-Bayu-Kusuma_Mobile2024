import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:photo_filter_carousel/takepicture_screen.dart';
import 'package:photo_filter_carousel/widget/filter_carousel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
Future<void> main() async {
  // Pastikan bahwa plugin sudah diinisialisasi
  
  WidgetsFlutterBinding.ensureInitialized();

  // Dapatkan daftar kamera yang tersedia di perangkat
  final cameras = await availableCameras();

  // Ambil kamera pertama dari daftar kamera
  final firstCamera = cameras.first;
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOption.currentPlatform,
);

  // Jalankan aplikasi Flutter
  runApp(
    MaterialApp(
      home: TakePictureScreen( camera: firstCamera),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DefaultFirebaseOption {
  static var currentPlatform;
}
