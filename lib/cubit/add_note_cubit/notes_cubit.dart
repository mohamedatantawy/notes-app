import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/cubit/add_note_cubit/notes_status.dart';
import 'package:myproject/models/notes_Model.dart';


class NotesCubit extends Cubit<NotesStatus> {
  NotesCubit() : super(NotesInitial());
  addnotes(NotesModel note)
  {
    
  }
}
