import 'package:flutter/material.dart';

class EmailButton extends StatelessWidget {
  const EmailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {},
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
