import 'package:flutter/material.dart';
import 'package:myproject/constant.dart';

class BottonNotes extends StatelessWidget {
  const BottonNotes(
      {super.key,
      required this.name,
      required this.ontap,
      this.isloading = false});
  final String name;
  final VoidCallback ontap;
  final bool isloading;
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
            child: isloading
                ? const SizedBox(
                    height: 30,
                    width: 30,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : Text(
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
