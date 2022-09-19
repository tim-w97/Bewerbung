import 'package:application/screens/curriculum.dart';
import 'package:application/constants/colors.dart' as colors;
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
        fontFamily: "Fraunces",
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(foregroundColor: colors.secondary),
        scaffoldBackgroundColor: colors.secondary,
        primaryColor: colors.primary,
        dividerTheme: const DividerThemeData(
          color: colors.lightBlue,
          thickness: 3,
          space: 40,
        ),
        colorScheme: const ColorScheme.light(
          primary: colors.primary,
          secondary: colors.secondary,
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
