import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/cubit/notes/notes_status.dart';
import 'package:myproject/models/notes_Model.dart';

import '../add_note_cubit/notes_status.dart';

class NotesCubit extends Cubit<NotesStatusa> {
  NotesCubit() : super(NotesInitiala());
  addnotes(NotesModel note) async {
    emit(Notesloading());
    try {
      var notesbox = Hive.box<NotesModel>(knotesbox);
      
      emit(NotesSucces( notesbox.values.toList()));
    } catch (e) {
      emit(Notesfailure(e.toString()));
    }
  }
}
