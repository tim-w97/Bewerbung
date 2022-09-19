import 'package:application/constants/colors.dart' as colors;
import 'package:application/constants/text_styles.dart' as text_styles;
import 'package:application/widgets/custom_button.dart';
import 'package:application/widgets/icon_buttons/email_button.dart';
import 'package:application/widgets/icon_buttons/github_button.dart';
import 'package:application/widgets/icon_buttons/phone_button.dart';
import 'package:application/widgets/icon_buttons/xing_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showButtonsVertical = MediaQuery.of(context).size.width < 420;
    bool showIconButtonsSeparately = MediaQuery.of(context).size.width < 633;

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
                    style: text_styles.big,
                  ),
                ),
              ),
              showIconButtonsSeparately
                  ? const CircleAvatar(
                      backgroundImage: AssetImage("images/tim.png"),
                      radius: 100,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        EmailButton(),
                        PhoneButton(),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/tim.png"),
                          radius: 100,
                        ),
                        GithubButton(),
                        XingButton(),
                      ],
                    ),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: showButtonsVertical
                                ? Axis.vertical
                                : Axis.horizontal,
                            children: [
                              CustomButton(
                                "Anschreiben",
                                margin: showButtonsVertical
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
                        if (showIconButtonsSeparately)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      EmailButton(),
                                      PhoneButton(),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    GithubButton(),
                                    XingButton(),
                                  ],
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
