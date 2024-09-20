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
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNotesloading ? true : false,
          child: Padding(
            
            padding: EdgeInsets.only(left: 16,right: 16,
            bottom:MediaQuery.of(context).viewInsets.bottom,),
            child:const SingleChildScrollView(
              
              child: customeForm()),
          ),
        );
      }),
    );
  }
}
