import 'package:flutter/material.dart';
import 'package:notes/Provider/notes_provider.dart';
import 'package:notes/notes_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Notesprovider(),
        child: MaterialApp(
          home: Notes_Screen(),
        ));
  }
}
