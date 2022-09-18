import 'package:application/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ApplicationApp());
}

class ApplicationApp extends StatelessWidget {
  const ApplicationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Meine Bewerbung',
      home: HomeScreen(),
    );
  }
}
