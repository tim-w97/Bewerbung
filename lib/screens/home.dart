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
    bool showButtonsVertical = MediaQuery.of(context).size.width < 450;
    bool showIconButtonsSeparately = MediaQuery.of(context).size.width < 700;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.primary,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Meine Bewerbung als Werkstudent",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
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
                  const Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Tim Wagner | Königstr. 62 | 95028 Hof",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Theme.of(context).colorScheme.primary,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flex(
                      mainAxisAlignment: MainAxisAlignment.center,
                      direction:
                          showButtonsVertical ? Axis.vertical : Axis.horizontal,
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
                    if (showIconButtonsSeparately)
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
