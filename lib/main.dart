import 'package:flutter/material.dart';

void main() {
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) => SampleContainer()),
        ),
      ),
    ),
  );
}

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        "Helllo Worlddd",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
