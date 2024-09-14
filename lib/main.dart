import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/views/EidotNotesView.dart';
import 'package:myproject/views/homeView.dart';

void main() async{
  await Hive.initFlutter();
   await Hive.openBox(knotesbox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
    
      routes: {
        Homeview.id: (context) => const Homeview(),
        Eidotnotesview.id: (context) => const Eidotnotesview(),
      },
      initialRoute:  Homeview.id,
    );
  }
}
