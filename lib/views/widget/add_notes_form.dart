import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/cubit/add_note_cubit/notes_cubit.dart';
import 'package:myproject/models/notes_Model.dart';
import 'package:myproject/views/widget/botton_Notes.dart';
import 'package:myproject/views/widget/textfield.dart';

class customeForm extends StatefulWidget {
  const customeForm({
    super.key,
  });

  @override
  State<customeForm> createState() => _customeFormState();
}

class _customeFormState extends State<customeForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          textfield(
            onsaved: (value) {
              title = value;
            },
            hint: 'Title',
            maxline: 1,
          ),
          const SizedBox(
            height: 30,
          ),
          textfield(
            onsaved: (p0) {
              subtitle = p0;
            },
            hint: 'context',
            hi: 200,
            ex: true,
          ),
          const SizedBox(
            height: 90,
          ),
          BottonNotes(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var note = NotesModel(
                    title: title!,
                    subtitle: subtitle!,
                    data: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<NotesCubit>(context).addnotes(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            name: 'Add',
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
