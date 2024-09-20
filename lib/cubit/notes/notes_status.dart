import 'package:myproject/models/notes_Model.dart';

class NotesStatusa {}

class NotesInitiala extends NotesStatusa {}

class Notesfailure extends NotesStatusa {
  final String errormassage;

  Notesfailure(this.errormassage);
}

class Notesloading extends NotesStatusa {}

class NotesSucces extends NotesStatusa {
 final  List<NotesModel> note;

  NotesSucces(this.note);
}
