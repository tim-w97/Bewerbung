import 'package:flutter/material.dart';

class Letter extends StatelessWidget {
  const Letter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anschreiben"),
      ),
    );
  }
}
