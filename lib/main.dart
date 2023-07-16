import 'package:flutter/material.dart';
import 'futureapi/hellofuture.api.dart' show helloFutureDemo;

void main() {
  final list = ["delhi", "calcutta", "chennai"];

  runApp(
    MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: helloFutureDemo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container(
                height: 200,
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Container(
                height: 200,
                alignment: Alignment.center,
                child: const Text("An Error Occured"),
              );
            } else {
              final list1 = snapshot.data ?? [];
              return ListView.builder(
                itemCount: list1.length,
                itemBuilder: (context, index) => SampleContainer(message: list1.elementAt(index)),
              );
            }
          },
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
