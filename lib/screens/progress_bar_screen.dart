import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:expanding_cards/widgets/widgets.dart';
import 'package:expanding_cards/provider/provider.dart';

class ProgressBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final posicion = Provider.of<GetterProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Progress By Steps'),
        backgroundColor: const Color(0xff007AFF),
        // backgroundColor: ,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          _ProgressBar(
            color: Colors.blue,
          ),
          SizedBox(height: 50),
          _Buttons(),
          SizedBox(height: 100),
          _ProgressBar(
            color: Colors.purple,
          ),
          SizedBox(height: 50),
          _Buttons(),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        CustomButton(
          string: 'Prev',
          onPressed: () {
            final posicion =
                Provider.of<GetterProvider>(context, listen: false);
            posicion.indexPorPintar = posicion.indexPorPintar - 1;
          },
        ),
        const Spacer(),
        CustomButton(
          string: 'Next',
          onPressed: () {
            final posicion =
                Provider.of<GetterProvider>(context, listen: false);
            posicion.indexPorPintar = posicion.indexPorPintar + 1;
          },
        ),
        const Spacer(),
      ],
    );
  }
}

class _ProgressBar extends StatelessWidget {
  final Color color;
  const _ProgressBar({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomContainer(
          isVisible: false,
          index: 1,
          texto: '1',
          color: color,
        ),
        CustomContainer(
          isVisible: true,
          index: 2,
          texto: '2',
          color: color,
        ),
        CustomContainer(
          isVisible: true,
          index: 3,
          texto: '3',
          color: color,
        ),
        CustomContainer(
          isVisible: true,
          index: 4,
          texto: '4',
          color: color,
        ),
      ],
    );
  }
}
