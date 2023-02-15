import 'package:flutter/material.dart';

class RotationNavigationScreen extends StatefulWidget {
  @override
  State<RotationNavigationScreen> createState() =>
      _RotationNavigationScreenState();
}

class _RotationNavigationScreenState extends State<RotationNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Rotate Navigation'),
        backgroundColor: const Color(0xff007AFF),
        actions: [
          IconButton(
              onPressed: () {
                contador = 15;
                print(contador);
                setState(() {});
              },
              icon: const Icon(
                Icons.list,
                size: 25,
              ))
        ],
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.identity()..rotateZ(contador * 3.14 / 180),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(
                  text: 'Amazing Article', tamano: 18, grosor: FontWeight.bold),
              const TitleText(text: 'Florin Pop', tamano: 13),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TitleText(
                    text:
                        'Fugiat quis labore velit adipisicing Lorem id minim ad consequat. Qui ex est do reprehenderit irure duis eu nostrud enim cupidatat est tempor. Sunt exercitation aute ipsum excepteur minim non ipsum cupidatat laboris mollit. Nostrud ullamco culpa incididunt adipisicing occaecat deserunt labore tempor minim ipsum pariatur. Sint nisi laboris ullamco quis do consequat nostrud enim aliqua ex aliquip occaecat non. Voluptate cillum cupidatat culpa labore consequat in ea anim elit deserunt cupidatat id ex velit.',
                    tamano: 15),
              ),
              const TitleText(
                  text: 'My Dog', tamano: 18, grosor: FontWeight.bold),
              Container(
                padding: const EdgeInsets.all(20),
                child: Image.network(
                    'https://images.unsplash.com/photo-1507146426996-ef05306b995a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;
  final double tamano;
  final FontWeight? grosor;
  const TitleText({
    super.key,
    required this.text,
    required this.tamano,
    this.grosor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: tamano, fontWeight: grosor, color: Colors.white),
    );
  }
}
