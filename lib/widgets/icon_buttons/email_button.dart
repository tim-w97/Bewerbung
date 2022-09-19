import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailButton extends StatelessWidget {
  const EmailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {
        final mailUri = Uri(
          scheme: "mailto",
          path: "timwagner997@gmail.com",
          query:
              "subject=${Uri.encodeComponent("Ihre Bewerbung bei der recoupling UG")}",
        );

        launchUrl(mailUri);
      },
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image.asset(
          "images/icons/email.png",
          width: 50,
        ),
      ),
    );
  }
}
