import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainButton extends StatelessWidget {
  final FaIcon icon;
  final String title;
  final Color color;
  final VoidCallback? onPressed;

  const MainButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.color,
      this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(30),
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(90),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: icon,
            iconSize: 32,
            color: Colors.black,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
        )
      ],
    );
  }
}
