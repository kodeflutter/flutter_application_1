import 'package:flutter/material.dart';

void main() {
  const text = '''Dart is a programming ''';
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
