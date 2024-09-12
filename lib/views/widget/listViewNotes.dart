import 'package:flutter/material.dart';
import 'package:myproject/views/widget/custome_NotesItem.dart';

class Listviewnotes extends StatelessWidget {
  const Listviewnotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomeNotesitem();
      },
    );
  }
}
