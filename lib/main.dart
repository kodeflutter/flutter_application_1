import 'package:flutter/material.dart';

void main() {
  final list = ["delhi", "calcutta", "chennai"];

  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: ((context, index) => SampleContainer(message: list.elementAt(index))),
          itemCount: list.length,
        ),
      ),
    ),
  );
}

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    const count = 100;

    return Container(
      height: 150,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '$message :: $count',
        textDirection: TextDirection.ltr,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
