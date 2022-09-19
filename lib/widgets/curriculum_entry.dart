import 'package:application/constants/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:application/constants/text_styles.dart' as text_styles;

class CurriculumEntry extends StatelessWidget {
  final String periodOfTime;
  final String image;
  final String place;
  final String activity;
  final String? details;

  const CurriculumEntry({
    Key? key,
    required this.periodOfTime,
    required this.image,
    required this.place,
    required this.activity,
    this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(periodOfTime,
            style: text_styles.medium.copyWith(color: colors.blue),
            textAlign: TextAlign.center),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset(
            image,
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            place,
            style: text_styles.medium.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          activity,
          style: text_styles.medium.copyWith(color: colors.lightGray),
          textAlign: TextAlign.center,
        ),
        if (details != null)
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              details!,
              style: text_styles.small,
            ),
          ),
      ],
    );
  }
}
