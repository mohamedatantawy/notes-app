import 'package:flutter/material.dart';
import 'package:myproject/constant.dart';

class BottonNotes extends StatelessWidget {
  const BottonNotes({super.key, required this.name, required this.ontap});
  final String name;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsetsDirectional.symmetric(horizontal: 12),
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kprimarycolor,
        ),
        child: Center(
            child: Text(
          name,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}
