import 'package:application/widgets/curriculum_entry.dart';
import 'package:flutter/material.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lebenslauf"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            CurriculumEntry(
              periodOfTime: "seit Oktober 2021",
              image: "images/logos/fh_hof.png",
              place: "Hochschule für angewandte Wissenschaften Hof",
              activity: "Studienfach: Mobile Computing (Bachelor)",
              details:
                  "Studium der Informatik mit Spezialisierung auf die Entwicklung von Software für mobile Endgeräte",
            ),
            Divider(),
            CurriculumEntry(
              periodOfTime: "Januar bis Juli 2021",
              image: "images/logos/ibykus.png",
              place: "IBYKUS AG",
              activity: "Softwareentwickler",
              details:
                  "Entwicklung einer Datenbank-Schnittstelle mit Java und Spring Boot / Frontend-Entwicklung mit HTML, JavaScript und Bootstrap",
            ),
            Divider(),
            CurriculumEntry(
              periodOfTime: "August 2018 bis Januar 2021",
              image: "images/logos/ibykus.png",
              place: "IBYKUS AG",
              activity:
                  "Ausbildung zum Fachinformatiker für Anwendungsentwicklung",
            ),
            Divider(),
            CurriculumEntry(
              periodOfTime: "April 2018 bis Juli 2018",
              image: "images/logos/ibykus.png",
              place: "IBYKUS AG",
              activity: "Praktikant",
              details:
                  "Einrichtung einer Wiki-Software für das Entwicklungsteam",
            ),
            Divider(),
            CurriculumEntry(
              periodOfTime: "Oktober 2017 bis März 2018",
              image: "images/logos/tu_ilmenau.png",
              place: "Technische Universität Ilmenau",
              activity: "Studienfach: Informatik (Bachelor)",
              details: "(abgebrochen)",
            ),
          ],
        ),
      ),
    );
  }
}
