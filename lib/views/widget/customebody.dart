import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/cubit/notes/notes_cubit.dart';
import 'package:myproject/views/widget/custome_NotesItem.dart';
import 'package:myproject/views/widget/custome_appbar.dart';
import 'package:myproject/views/widget/listViewNotes.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubita>(context).fatchidnote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
       const   SizedBox(
            height: 50,
          ),
          custome_app_bar(
            ontap: () {
            },
            icon: Icons.search,
            name: 'Notes',
          ),
       const    Expanded(
            child: Listviewnotes(),
          ),
        ],
      ),
    );
  }
}
