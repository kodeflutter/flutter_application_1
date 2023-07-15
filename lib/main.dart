import 'package:flutter/material.dart';

void main() {
  final text =
      '''Dart is a programming language designed by Lars Bak and Kasper Lund and developed by Google. The programming language can be used to develop web and mobile apps as well as server and desktop applications. It is an object-oriented, class-based, garbage-collected language with C-style syntax. Wikipedia''';
  runApp(Text(
    text.trimLeft(),
    textDirection: TextDirection.ltr,
    style: TextStyle(
      color: Colors.grey,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
  ));
}
