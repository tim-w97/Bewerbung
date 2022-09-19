import 'package:application/constants/colors.dart' as colors;
import 'package:application/constants/text_styles.dart' as text_styles;
import 'package:application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width < 420;

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
                    textAlign: TextAlign.center,
                    style: text_styles.bigHeadline,
                  ),
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage("images/tim.png"),
                radius: 100,
              ),
              Expanded(
                child: Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  direction: isSmallScreen ? Axis.vertical : Axis.horizontal,
                  children: [
                    CustomButton(
                      "Anschreiben",
                      margin: isSmallScreen
                          ? const EdgeInsets.only(bottom: 20)
                          : const EdgeInsets.only(right: 20),
                      onPressed: () {
                        Navigator.pushNamed(context, "/letter");
                      },
                    ),
                    CustomButton(
                      "Lebenslauf",
                      onPressed: () {
                        Navigator.pushNamed(context, "/cv");
                      },
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
