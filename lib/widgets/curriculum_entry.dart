import 'package:application/constants/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:application/constants/text_styles.dart' as text_styles;

class CurriculumEntry extends StatelessWidget {
  final String periodOfTime;
  final String place;
  final String activity;

  const CurriculumEntry({
    Key? key,
    required this.periodOfTime,
    required this.place,
    required this.activity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            periodOfTime,
            style: text_styles.medium.copyWith(color: colors.blue),
          ),
        ),
        Text(
          place,
          style: text_styles.medium.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          activity,
          style: text_styles.medium.copyWith(color: colors.lightGray),
        ),
      ],
    );
  }
}
