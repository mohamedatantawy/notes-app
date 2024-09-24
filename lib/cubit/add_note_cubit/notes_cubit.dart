import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/cubit/add_note_cubit/notes_status.dart';
import 'package:myproject/models/notes_Model.dart';

class NotesCubit extends Cubit<NotesStatus> {
  NotesCubit() : super(NotesInitial());
  Color color = Colors.blue;
  addnotes(NotesModel note) async {
    note.color = color.value;

    emit(AddNotesloading());
    try {
      var notesbox = Hive.box<NotesModel>(knotesbox);

      await notesbox.add(note);
      emit(AddNotesSucces());
    } catch (e) {
      emit(AddNotesfailure(e.toString()));
    }
  }
}
