import 'package:flutter/material.dart';
import 'package:myproject/views/widget/custome_NotesItem.dart';
import 'package:myproject/views/widget/custome_appbar.dart';
import 'package:myproject/views/widget/listViewNotes.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          custome_app_bar(),
          Expanded(child: Listviewnotes(),),
         
        ],
      ),
    );
  }
}
