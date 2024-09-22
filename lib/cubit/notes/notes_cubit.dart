import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/cubit/notes/notes_status.dart';
import 'package:myproject/models/notes_Model.dart';

import '../add_note_cubit/notes_status.dart';

class NotesCubita extends Cubit<NotesStatusa> {
  NotesCubita() : super(NotesInitiala());

  List<NotesModel>? notes;
  fatchidnote() {
    var notesbox = Hive.box<NotesModel>(knotesbox);
    notes = notesbox.values.toList();
    emit(NotesSucuss());
  }
}
