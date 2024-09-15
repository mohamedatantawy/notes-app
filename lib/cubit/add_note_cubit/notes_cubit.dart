import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/cubit/add_note_cubit/notes_status.dart';
import 'package:myproject/models/notes_Model.dart';

class NotesCubit extends Cubit<NotesStatus> {
  NotesCubit() : super(NotesInitial());
  addnotes(NotesModel note) async {
    emit(AddNotesloading());
    try {
      var notesbox = Hive.box(knotesbox);
      emit(AddNotesSucces());
      await notesbox.add(note);
    } catch (e) {
      emit(AddNotesfailure(e.toString()));
    }
  }
}
