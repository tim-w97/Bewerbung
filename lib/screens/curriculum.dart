import 'package:application/widgets/curriculum_entry.dart';
import 'package:flutter/material.dart';
import 'package:application/constants/text_styles.dart' as text_styles;

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lebenslauf"),
      ),
      body: Column(
        children: const [
          CurriculumEntry(
            periodOfTime: "seit Oktober 2021",
            place: "Hochschule für angewandte Wissenschaften Hof",
            activity: "Studienfach: Mobile Computing (Bachelor)",
          ),
          Divider(),
          CurriculumEntry(
            periodOfTime: "Januar bis Juli 2021",
            place: "IBYKUS AG",
            activity: "Softwareentwickler",
          ),
        ],
      ),
    );
  }
}
