import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({super.key});

  @override
  State<AgeCalculator> createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  TextEditingController ageController = TextEditingController();

  findAge(String age) {
    final currentDate = DateTime.now();
    final parsedDate = DateTime.parse(age);
    final ageNow = currentDate.year - parsedDate.year;
    print(ageNow.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 205, 203, 203)),
                child: TextField(
                  controller: ageController,
                )),
            IconButton(
                onPressed: () {
                  findAge(ageController.text);
                },
                icon: const Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}
