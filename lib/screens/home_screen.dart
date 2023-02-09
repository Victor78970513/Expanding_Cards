import 'package:flutter/material.dart';

import 'package:expanding_cards/widgets/cards.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanding Cards'),
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
}
