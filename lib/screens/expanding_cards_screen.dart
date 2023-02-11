import 'package:flutter/material.dart';

import 'package:expanding_cards/widgets/cards.dart';

class ExpandingCardsScreen extends StatefulWidget {
  @override
  State<ExpandingCardsScreen> createState() => _ExpandingCardsScreenState();
}

class _ExpandingCardsScreenState extends State<ExpandingCardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
