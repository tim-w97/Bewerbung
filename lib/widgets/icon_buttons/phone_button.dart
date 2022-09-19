import 'package:flutter/material.dart';

class PhoneButton extends StatelessWidget {
  const PhoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {},
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
