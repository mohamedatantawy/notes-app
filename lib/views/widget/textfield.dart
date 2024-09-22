import 'package:flutter/material.dart';
import 'package:myproject/constant.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    this.ex = false,
    this.maxline = null,
    required this.hint,
    this.hi = 70,
    this.onsaved, this.onchange,
  });
  final int? maxline;
  final String hint;
  final bool ex;
  final double hi;
  final void Function(String?)? onsaved;
  final void Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hi,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TextFormField(
          onChanged: onchange,
          onSaved: onsaved,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'failed massage';
            } else {
              return null;
            }
          },
          maxLines: maxline,
          expands: ex,
          keyboardType: TextInputType.multiline,
          cursorColor: kprimarycolor,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: kprimarycolor,
              fontSize: 18,
            ),
            border: buildborder(),
            enabledBorder: buildborder(),
            focusedBorder: buildborder(kprimarycolor),
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
