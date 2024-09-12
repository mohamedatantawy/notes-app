import 'package:flutter/material.dart';
import 'package:myproject/views/widget/botton_Notes.dart';
import 'package:myproject/views/widget/custome_appbar.dart';
import 'package:myproject/views/widget/textfield.dart';

class EidotnotesView_body extends StatelessWidget {
  const EidotnotesView_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        custome_app_bar(
          name: 'Edit Notes',
          icon: Icons.check,
        ),
        SizedBox(
          height: 20,
        ),
        textfield(hint: 'Title'),
        SizedBox(
          height: 20,
        ),
        textfield(
          hint: 'Title',
          ex: true,
          hi: 200,
        ),
        SizedBox(
          height: 100,
        ),
        //   BottonNotes( name: 'Eidot',),
      ],
    );
  }
}
