import 'package:flutter/material.dart';

class Letter extends StatelessWidget {
  const Letter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool letterDoesNotFitA4 = MediaQuery.of(context).size.width < 430;

    Widget letter = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sehr geehrte Damen und Herren,\n\n\n"
          "Lorem ipsum dolor sit amet, "
          "consetetur sadipscing elitr, sed diam nonumy eirmod tempor "
          "invidunt ut labore et dolore magna aliquyam erat, sed diam "
          "voluptua. At vero eos et accusam et justo duo dolores et ea rebum. "
          "Stet clita kasd gubergren, no sea takimata sanctus est Lorem "
          "ipsum dolor sit amet.\n\nLorem ipsum dolor sit amet, consetetur "
          "sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut "
          "labore et dolore magna aliquyam erat, sed diam voluptua. "
          "At vero eos et accusam et justo duo dolores et ea rebum. "
          "Stet clita kasd gubergren, no sea takimata sanctus est Lorem "
          "ipsum dolor sit amet.\n\n\n"
          "Mit freundlichen Grüßen",
          textAlign: TextAlign.justify,
        ),
        Image.asset(
          "images/signature.png",
          width: 200,
        ),
        const Text("Max Mustermann")
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Anschreiben"),
      ),
      body: Container(
        decoration: letterDoesNotFitA4
            ? null
            : const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/pattern.png"),
                  fit: BoxFit.cover,
                ),
              ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SizedBox(
                width: 500,
                child: letterDoesNotFitA4
                    ? letter
                    : AspectRatio(
                        aspectRatio: 1 / 1.4142,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: letter,
                          ),
                        )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
