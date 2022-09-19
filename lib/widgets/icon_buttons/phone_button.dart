import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneButton extends StatelessWidget {
  const PhoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {
        final telUri = Uri(
          scheme: "tel",
          path: "+4915204847344",
        );

        launchUrl(telUri);
      },
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image.asset(
          "images/icons/phone.png",
          width: 50,
        ),
      ),
    );
  }
}
