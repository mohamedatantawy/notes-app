import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/cubit/add_note_cubit/notes_cubit.dart';
import 'package:myproject/cubit/add_note_cubit/notes_status.dart';
import 'package:myproject/cubit/notes/notes_cubit.dart';
import 'package:myproject/cubit/notes/notes_status.dart';
import 'package:myproject/models/notes_Model.dart';
import 'package:myproject/views/widget/custome_NotesItem.dart';

class Listviewnotes extends StatelessWidget {
  const Listviewnotes({super.key});
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubita, NotesStatusa>(
      builder: (context, state) {
        List<NotesModel> note =
            BlocProvider.of<NotesCubita>(context).notes ?? [];
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: note.length,
          itemBuilder: (context, index) {
            return  CustomeNotesitem(
              note: note[index],
            );
          },
        );
      },
    );
  }
}
