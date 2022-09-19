import 'package:flutter/material.dart';

class GithubButton extends StatelessWidget {
  const GithubButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {},
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image.asset(
          "images/icons/octocat.png",
          width: 50,
        ),
      ),
    );
  }
}
