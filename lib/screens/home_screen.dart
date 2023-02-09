import 'package:expanding_cards/provider/provider.dart';
import 'package:expanding_cards/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _height = 50.0;
  @override
  Widget build(BuildContext context) {
    final numero = Provider.of<GetterProvider>(context).index;
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanding Cards'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Cards(0),
            Cards(1),
            Cards(2),
            Cards(3),
            Cards(4),
          ],
        ),
      ),
    );
  }

  void changeShape() {
    _height = 100;
    setState(() {});
  }
}












    // int numero = Provider.of<IndexProvider>(context).index;
    // return AnimatedBuilder(
    //   animation:
    //       Listenable.merge([_animationController, _secondAnimationController]),
    //   builder: (context, _) {
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: const Text('Expanding Cards'),
    //       ),
    // body: ListView.builder(
    //   itemCount: imagenes.length,
    //   itemBuilder: (context, int index) {
    //     numero = index;
    //     return Cards(
    //       imagenes[index],
    //       titulos[index],
    //       _animationUp,
    //       () {
    //         _secondAnimationController.forward();
    //         _animationController.forward();
    //       },
    //     );
    //   },
    // ),
