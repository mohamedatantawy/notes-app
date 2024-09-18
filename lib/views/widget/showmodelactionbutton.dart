import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:myproject/cubit/add_note_cubit/notes_cubit.dart';
import 'package:myproject/cubit/add_note_cubit/notes_status.dart';
import 'package:myproject/views/homeView.dart';
import 'package:myproject/views/widget/add_notes_form.dart';

class showamodelctionbutton extends StatelessWidget {
  const showamodelctionbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocConsumer<NotesCubit, NotesStatus>(listener: (context, state) {
        if (state is AddNotesfailure) {
          print('failed the status');
        }
        if (state is AddNotesSucces) {
          Navigator.pop(context, MaterialPageRoute(builder: (context) {
            return Homeview();
          }));
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNotesloading?true:false,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(child: customeForm()),
          ),
        );
      }),
    );
  }
}
