import 'package:expanding_cards/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomContainer extends StatefulWidget {
  final bool isVisible;
  final int index;
  final String texto;
  final Color color;

  const CustomContainer(
      {super.key,
      required this.isVisible,
      required this.index,
      required this.texto,
      required this.color});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    final posicion = Provider.of<GetterProvider>(context).indexPorPintar;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget.isVisible == true)
          AnimatedContainer(
            height: 5,
            width: 35,
            color: posicion >= widget.index ? widget.color : Colors.grey,
            duration: const Duration(milliseconds: 500),
          ),
        CircleStep(
          posicion: posicion,
          widget: widget,
          color: widget.color,
        ),
      ],
    );
  }
}

class CircleStep extends StatelessWidget {
  final Color color;
  const CircleStep({
    Key? key,
    required this.posicion,
    required this.widget,
    required this.color,
  }) : super(key: key);

  final int posicion;
  final CustomContainer widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: posicion >= widget.index ? color : Colors.grey,
          ),
          duration: const Duration(milliseconds: 500),
        ),
        Positioned(
          top: 0,
          right: 5,
          bottom: 0,
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child:
                Align(alignment: Alignment.center, child: Text(widget.texto)),
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String string;
  final VoidCallback onPressed;

  const CustomButton(
      {super.key, required this.string, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(string),
    );
  }
}
