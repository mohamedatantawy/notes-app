class NotesStatus {}

class NotesInitial extends NotesStatus {}

class AddNotesfailure extends NotesStatus {
  final String  errormassage;

  AddNotesfailure(this.errormassage);
}

class AddNotesloading extends NotesStatus {}

class AddNotesSucces extends NotesStatus {}
