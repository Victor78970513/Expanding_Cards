import 'package:expanding_cards/widgets/custom_painter.dart';
import 'package:flutter/material.dart';

class ProgressBarScreen extends StatelessWidget {
  final double porcentaje;

  const ProgressBarScreen({super.key, required this.porcentaje});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: ByStepsProgress(porcentaje: porcentaje),
        ),
      ),
    );
  }
}
