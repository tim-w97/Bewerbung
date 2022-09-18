import 'package:application/constants/colors.dart' as colors;
import 'package:application/constants/text_styles.dart' as text_styles;
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: colors.primary,
                  child: const Center(
                    child: Text(
                      "Bewerbung als Werkstudent",
                      style: text_styles.bigHeadline,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: colors.secondary,
                ),
              ),
            ],
          ),
          const CircleAvatar(
            backgroundImage: AssetImage("images/tim.png"),
            radius: 100,
          ),
        ],
      ),
    );
  }
}
