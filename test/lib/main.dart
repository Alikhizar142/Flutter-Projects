import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: widget1(),
    );
  }
}

class widget1 extends StatelessWidget {
  const widget1({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 26, 135, 224),
        child: Center(
            child: Text("My name is  Khizar",
                style: const TextStyle(
                    color: Color.fromARGB(255, 243, 243, 59),
                    fontStyle: FontStyle.italic,
                    fontFamily: '',
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(221, 255, 255, 255),
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationThickness: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 40))));
  }
}
