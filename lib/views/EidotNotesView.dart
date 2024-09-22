import 'package:flutter/material.dart';
import 'package:myproject/models/notes_Model.dart';
import 'package:myproject/views/widget/eidotnotesBody.dart';

class Eidotnotesview extends StatelessWidget {
  const Eidotnotesview({super.key, required this.noteEa});
  static String id = 'eidot view';
 final NotesModel noteEa;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EidotnotesView_body(noteE: noteEa,),
    );
  }
}
