import 'package:flutter/material.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/views/widget/customebody.dart';
import 'package:myproject/views/widget/showmodelactionbutton.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  static String id = 'home view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Kprimarycolor,
        foregroundColor: Colors.black,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              builder: (context) {
                return const showamodelctionbutton();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
