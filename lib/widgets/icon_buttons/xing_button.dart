import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class XingButton extends StatelessWidget {
  const XingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {
        launchUrlString("https://www.xing.com/profile/Tim_Wagner166");
      },
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image.asset(
          "images/icons/xing.png",
          width: 50,
        ),
      ),
    );
  }
}
