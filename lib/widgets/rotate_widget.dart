import 'package:flutter/material.dart';

class RotateWidget extends StatelessWidget {
  const RotateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
    );
  }
}
