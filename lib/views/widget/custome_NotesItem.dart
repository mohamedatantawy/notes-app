import 'package:flutter/material.dart';
import 'package:myproject/constant.dart';
import 'package:myproject/views/EidotNotesView.dart';

class CustomeNotesitem extends StatelessWidget {
  const CustomeNotesitem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Eidotnotesview.id);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 6),
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 12,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(
                    fontSize: 30,
                    color: color,
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'biuld your career with mohamed dff',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: color,
                    size: 35,
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Text(
                'may21.2024',
                style: TextStyle(
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
