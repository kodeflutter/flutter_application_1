import 'package:flutter/material.dart';
import 'futureapi/postsapi/posts.dart' show fetchPosts;
import 'futureapi/hellofuture.api.dart' show helloFutureDemo;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: fetchPosts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final list = snapshot.data ?? [];
              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) => SampleContainer(message: list.elementAt(index).title ?? ""),
              );
            } else if (snapshot.hasError) {
              return Container(
                height: 200,
                alignment: Alignment.center,
                child: const Text("An Error Occured"),
              );
            } else {
              return Container(
                height: 200,
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
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
        '$message',
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
