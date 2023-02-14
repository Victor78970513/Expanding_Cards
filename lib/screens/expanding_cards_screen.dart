import 'package:flutter/material.dart';

import 'package:expanding_cards/widgets/widgets.dart';

class ExpandingCardsScreen extends StatefulWidget {
  @override
  State<ExpandingCardsScreen> createState() => _ExpandingCardsScreenState();
}

class _ExpandingCardsScreenState extends State<ExpandingCardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Expanding Cards'),
        backgroundColor: const Color(0xff007AFF),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Cards(0),
          Cards(1),
          Cards(2),
          Cards(3),
          Cards(4),
        ],
      ),
    );
  }
}
