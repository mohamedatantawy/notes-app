import 'package:flutter/material.dart';
import 'package:myproject/views/homeView.dart';

void main() {
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homeview(),
    ) ;}
}