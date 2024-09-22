import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/cubit/notes/notes_cubit.dart';
import 'package:myproject/models/notes_Model.dart';
import 'package:myproject/views/widget/botton_Notes.dart';
import 'package:myproject/views/widget/custome_appbar.dart';
import 'package:myproject/views/widget/textfield.dart';

class EidotnotesView_body extends StatefulWidget {
  const EidotnotesView_body({super.key, required this.noteE});
  final NotesModel noteE;

  @override
  State<EidotnotesView_body> createState() => _EidotnotesView_bodyState();
}

class _EidotnotesView_bodyState extends State<EidotnotesView_body> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        custome_app_bar(
          ontap: () {
            widget.noteE.title = title ?? widget.noteE.title;

            widget.noteE.subtitle = subtitle ?? widget.noteE.subtitle;
            widget.noteE.save();
            BlocProvider.of<NotesCubita>(context).fatchidnote();

            Navigator.pop(context);
          },
          name: 'Edit Notes',
          icon: Icons.check,
        ),
        const SizedBox(
          height: 20,
        ),
        textfield(
            onchange: (value) {
              title = value;
            },
            hint: widget.noteE.title),
        const SizedBox(
          height: 20,
        ),
        textfield(
          onchange: (value) {
            subtitle = value;
          },
          hint: widget.noteE.subtitle,
          ex: true,
          hi: 200,
        ),
        const SizedBox(
          height: 100,
        ),
        //   BottonNotes( name: 'Eidot',),
      ],
    );
  }
}
