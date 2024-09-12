import 'package:flutter/material.dart';
import 'package:myproject/views/widget/botton_Notes.dart';
import 'package:myproject/views/widget/textfield.dart';

class showamodelctionbutton extends StatelessWidget {
  const showamodelctionbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          textfield(
            hint: 'Title',
            maxline: 1,
          ),
          SizedBox(
            height: 30,
          ),
          textfield(
            hint: 'context',
            hi: 200,
            ex: true,
          ),
          SizedBox(
            height: 90,
          ),
          BottonNotes(
            name: 'Add',
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
