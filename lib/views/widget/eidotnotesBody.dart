import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/cubit/add_note_cubit/notes_cubit.dart';
import 'package:myproject/cubit/notes/notes_cubit.dart';
import 'package:myproject/models/notes_Model.dart';
import 'package:myproject/views/widget/botton_Notes.dart';
import 'package:myproject/views/widget/color_list_addnotes.dart';
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
        list_view_color_Edit(
          note: widget.noteE,
        ),
        //   BottonNotes( name: 'Eidot',),
      ],
    );
  }
}

class list_view_color_Edit extends StatefulWidget {
  const list_view_color_Edit({super.key, required this.note});
  final NotesModel note;
  @override
  State<list_view_color_Edit> createState() => _list_view_color_EditState();
}

class _list_view_color_EditState extends State<list_view_color_Edit> {
  late int currentcolor;
  @override
  void initState() {
    currentcolor = kcolor.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: kcolor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentcolor = index;
              widget.note.color = kcolor[index].value;
              setState(() {});
            },
            child: coloritem(
               color: kcolor[index],
              isactive: currentcolor==index,
             
            ),
          );
        },
      ),
    );
  }
}
