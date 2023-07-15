import 'package:flutter/material.dart';

void main() {
  const text =
      '''Dart is a programming language designed by Lars Bak and Kasper Lund and developed by Google. The programming language can be used to develop web and mobile apps as well as server and desktop applications. It is an object-oriented, class-based, garbage-collected language with C-style syntax. Wikipedia''';
  runApp(
    Container(
      child: Text(
        text,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.green),
    ),
  );
}
