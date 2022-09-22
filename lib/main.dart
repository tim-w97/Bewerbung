import 'package:application/screens/curriculum.dart';
import 'package:application/screens/home.dart';
import 'package:application/screens/letter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ApplicationApp());
}

class ApplicationApp extends StatelessWidget {
  const ApplicationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meine Bewerbung',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF24222C),
        ),
      ),
      routes: {
        "/": (context) => const Home(),
        "/cv": (context) => const Curriculum(),
        "/letter": (context) => const Letter(),
      },
    );
  }
}
