import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kamera_flutter/takepicture_screen.dart';

Future<void> main() async {
  // Pastikan bahwa plugin sudah diinisialisasi
  WidgetsFlutterBinding.ensureInitialized();

  // Dapatkan daftar kamera yang tersedia di perangkat
  final cameras = await availableCameras();

  // Ambil kamera pertama dari daftar kamera
  final firstCamera = cameras.first;

  // Jalankan aplikasi Flutter
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        // Berikan kamera pertama sebagai argumen
        camera: firstCamera,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
