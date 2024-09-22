import 'package:flutter/material.dart';

class Custome_searchIcon extends StatelessWidget {
  const Custome_searchIcon({super.key, required this.icon, required this.ontap});
  final IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.07),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 32,
          ),
        ),
      ),
    );
  }
}
