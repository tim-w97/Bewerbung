import 'package:flutter/material.dart';

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
        Text(
          periodOfTime,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.grey),
        ),
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
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Text(
          activity,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20),
        ),
        if (details != null)
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              details!,
            ),
          ),
      ],
    );
  }
}
