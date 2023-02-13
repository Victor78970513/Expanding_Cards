import 'package:flutter/material.dart';

class ByStepsProgress extends StatefulWidget {
  final double porcentaje;

  const ByStepsProgress({super.key, required this.porcentaje});
  @override
  State<ByStepsProgress> createState() => _ByStepsProgressState();
}

class _ByStepsProgressState extends State<ByStepsProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late double porcentajeAnterior;

  @override
  void initState() {
    porcentajeAnterior = widget.porcentaje;

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward(from: 0.0);

    final diferenciaAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Container(
          child: CustomPaint(
            painter: _BySteps((widget.porcentaje - diferenciaAnimar) +
                (diferenciaAnimar + controller.value)),
          ),
        );
      },
    );
  }
}

class _BySteps extends CustomPainter {
  final double porcentaje;

  _BySteps(this.porcentaje);
  @override
  void paint(Canvas canvas, Size size) {
    final circulo = Paint()
      ..color = Colors.grey
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final lapiz = Paint()
      ..color = Colors.grey
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final path = Path();
    // path.moveTo(size.width * 0.05, size.height * 0.5);
    // path.lineTo(size.width / 5, size.height / 2);
    // canvas.drawCircle(Offset(size.width * 0.25, size.height * 0.5),
    //     size.width * 0.05, circulo);

    // path.moveTo(size.width * 0.3, size.height / 2);
    // path.lineTo(size.width / 2.3, size.height / 2);
    // canvas.drawCircle(Offset(size.width * 0.48, size.height * 0.5),
    //     size.width * 0.05, circulo);

    // path.moveTo(size.width * 0.53, size.height * 0.5);
    // path.lineTo(size.width / 1.5, size.height / 2);
    // canvas.drawCircle(Offset(size.width * 0.72, size.height * 0.5),
    //     size.width * 0.05, circulo);
    path.moveTo(0, size.height / 2);
    // canvas.drawCircle(Offset(size.width * 0.1, size.height * 0.5),
    //     size.width * 0.05, circulo);

    path.lineTo(size.width, size.height / 2);

    final lineaPorcentaje = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final grafica = porcentaje / 100;

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
