import 'package:application/constants/colors.dart' as colors;
import 'package:application/constants/text_styles.dart' as text_styles;
import 'package:application/widgets/custom_button.dart';
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
                child: Container(color: colors.primary),
              ),
              Expanded(
                child: Container(color: colors.secondary),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    "Bewerbung als Werkstudent",
                    style: text_styles.bigHeadline,
                  ),
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage("images/tim.png"),
                radius: 100,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      "Anschreiben",
                      margin: const EdgeInsets.only(right: 20),
                      onPressed: () {},
                    ),
                    CustomButton(
                      "Lebenslauf",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
