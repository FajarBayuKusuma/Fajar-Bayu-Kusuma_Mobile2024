import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Navigation Dialog Screen - Fajar Bayu Kusuma"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Change Color"),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text('Very important question'),
            content: const Text('Please choose a color'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  color = Colors.red.shade200;
                  Navigator.pop(context, color);
                },
                child: const Text('Red'),
              ),
              TextButton(
                onPressed: () {
                  color = Colors.green.shade100;
                  Navigator.pop(context, color);
                },
                child: const Text('Green'),
              ),
              TextButton(
                onPressed: () {
                  color = Colors.indigo.shade200;
                  Navigator.pop(context, color);
                },
                child: const Text('Blue'),
              ),
            ],
          );
        });
    setState(() {});
  }
}
