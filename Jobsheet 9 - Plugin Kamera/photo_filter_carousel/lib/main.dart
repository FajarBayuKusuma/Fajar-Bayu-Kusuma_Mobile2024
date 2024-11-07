import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:photo_filter_carousel/takepicture_screen.dart';
import 'package:photo_filter_carousel/widget/filter_carousel.dart';

Future<void> main() async {
  // Pastikan bahwa plugin sudah diinisialisasi
  WidgetsFlutterBinding.ensureInitialized();

  // Dapatkan daftar kamera yang tersedia di perangkat
  final cameras = await availableCameras();

  // Ambil kamera pertama dari daftar kamera
  final firstCamera = cameras.first;

  // Jalankan aplikasi Flutter
  runApp(
    const MaterialApp(
      home: PhotoFilterCarousel(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
