import 'package:expanding_cards/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RotationNavigationScreen extends StatefulWidget {
  @override
  State<RotationNavigationScreen> createState() =>
      _RotationNavigationScreenState();
}

class _RotationNavigationScreenState extends State<RotationNavigationScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController1;
  late Animation<double> _animationUp;

  @override
  void initState() {
    _animationController1 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    _animationUp = Tween(begin: 0.0, end: 25.0).animate(CurvedAnimation(
        parent: _animationController1, curve: const Interval(0.0, 1)));
    super.initState();
  }

  @override
  void dispose() {
    _animationController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final flag = Provider.of<GetterProvider>(context).flag;
    return AnimatedBuilder(
        animation: _animationController1,
        builder: (context, _) {
          return Scaffold(
              backgroundColor: Colors.grey[900],
              appBar: AppBar(
                title: const Text('Rotate Navigation'),
                backgroundColor: const Color(0xff007AFF),
                actions: [
                  IconButton(
                      onPressed: () {
                        flag ? changeIcon() : secondAnimation();
                      },
                      icon: flag
                          ? const Icon(
                              Icons.list,
                              size: 25,
                            )
                          : const Icon(Icons.warning))
                ],
              ),
              body: Container(
                transform: Matrix4.identity()
                  ..rotateZ(_animationUp.value * -3.14 / 180),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleText(
                          text: 'Amazing Article',
                          tamano: 18,
                          grosor: FontWeight.bold),
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
              ));
        });
  }

  void changeIcon() {
    final flag = Provider.of<GetterProvider>(context, listen: false);
    flag.flag = !flag.flag;
    _animationController1.forward();
  }

  void secondAnimation() {
    final flag = Provider.of<GetterProvider>(context, listen: false);
    flag.flag = !flag.flag;
    _animationController1.reverse();
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
