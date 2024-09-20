import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/cubit/add_note_cubit/notes_cubit.dart';
import 'package:myproject/models/notes_Model.dart';
import 'package:myproject/simple_bloc_observer.dart';
import 'package:myproject/views/EidotNotesView.dart';
import 'package:myproject/views/homeView.dart';

void main() async {
  await Hive.initFlutter();
    Hive.registerAdapter(NotesModelAdapter());

  await Hive.openBox<NotesModel>(knotesbox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
       
        home:const Homeview(),
      ),
    );
  }
}
