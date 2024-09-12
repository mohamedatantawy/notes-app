import 'package:flutter/material.dart';
import 'package:myproject/views/widget/custome_NotesItem.dart';
import 'package:myproject/views/widget/custome_searshIcon.dart';

class custome_app_bar extends StatelessWidget {
  const custome_app_bar({
    super.key,
    required this.name, required this.icon,
  });
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 32,
          ),
        ),
        const Spacer(),
         Custome_searchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
