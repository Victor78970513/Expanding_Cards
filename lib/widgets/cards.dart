import 'package:animate_do/animate_do.dart';
import 'package:expanding_cards/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cards extends StatelessWidget {
  final int index;

  const Cards(
    this.index,
  );
  @override
  Widget build(BuildContext context) {
    final numero = Provider.of<GetterProvider>(context);

    List images = [
      'assets/image_1.png',
      'assets/image_2.png',
      'assets/image_3.png',
      'assets/image_4.png',
      'assets/image_5.png',
    ];

    List titulos = [
      'Explore The World',
      'Wild Forest',
      'Sunny Beach',
      'City on Winter',
      'Mountains - Clouds'
    ];
    return GestureDetector(
      onTap: () {
        final numero = Provider.of<GetterProvider>(context, listen: false);

        numero.index = index;
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              height: index == numero.index ? 300 : 50,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            bottom: 20,
            child: Text(
              index == numero.index ? titulos[index] : '',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
