import 'package:flutter/material.dart';
import 'package:myproject/constant.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    this.ex = false,
    this.maxline = null,
    required this.hint,
    this.hi=70,
  });
  final int? maxline;
  final String hint;
  final bool ex;
  final double hi;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hi,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          maxLines: maxline,
          expands: ex,
          keyboardType: TextInputType.multiline,
          cursorColor: Kprimarycolor,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle:const TextStyle(
              color: Kprimarycolor,
              fontSize: 18,
            ),
            border: buildborder(),
            enabledBorder: buildborder(),
            focusedBorder: buildborder(Kprimarycolor),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
