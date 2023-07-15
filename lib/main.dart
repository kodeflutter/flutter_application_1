import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      children: List.generate(10, (index) => SampleContainer()),
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
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 2),
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
