import 'package:flutter/material.dart';

class list_view_color extends StatefulWidget {
  const list_view_color({super.key});

  @override
  State<list_view_color> createState() => _list_view_colorState();
}

class _list_view_colorState extends State<list_view_color> {
  final List<Color> color = const [
    Colors.black,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.green,
  ];
  int currentcolor = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentcolor = index;
              setState(() {
                
              });
            },
            child: coloritem(
              isactive: currentcolor == index,
              color: color[index],
            ),
          );
        },
      ),
    );
  }
}

class coloritem extends StatelessWidget {
  const coloritem({
    super.key,
    required this.color,
    required this.isactive,
    //required this.ontap
  });
  final Color color;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: isactive == true
          ? CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 34,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
    );
  }
}
