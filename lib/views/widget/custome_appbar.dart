import 'package:flutter/material.dart';
import 'package:myproject/views/widget/custome_NotesItem.dart';
import 'package:myproject/views/widget/custome_searshIcon.dart';

class custome_app_bar extends StatelessWidget {
  const custome_app_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         Text(
          'Notes',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
         Spacer(),
        Custome_searchIcon(),
        
      ],
    );
  }
}
