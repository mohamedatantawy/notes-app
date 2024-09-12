import 'package:flutter/material.dart';
import 'package:myproject/views/widget/eidotnotesBody.dart';

class Eidotnotesview extends StatelessWidget {
  const Eidotnotesview({super.key});
  static String id = 'eidot view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EidotnotesView_body(),
    );
  }
}
