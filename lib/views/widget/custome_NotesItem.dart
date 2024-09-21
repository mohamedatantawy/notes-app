import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/cubit/notes/notes_cubit.dart';
import 'package:myproject/models/notes_Model.dart';
import 'package:myproject/views/EidotNotesView.dart';

class CustomeNotesitem extends StatelessWidget {
  const CustomeNotesitem({super.key, required this.note});
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Eidotnotesview();
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 6),
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 12,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(
                    fontSize: 30,
                    color: color,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    note.subtitle,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: color,
                    size: 35,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.data.toString(),
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
