import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:expanding_cards/screens/screens.dart';
import 'package:expanding_cards/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: const Color(0xff007AFF),
        title: const Text('Animations'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainButton(
                  icon: const FaIcon(FontAwesomeIcons.maximize),
                  title: 'Expanding Cards',
                  color: const Color(0xffFF7043),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ExpandingCardsScreen()));
                  },
                ),
                MainButton(
                  icon: const FaIcon(FontAwesomeIcons.percent),
                  title: 'Progres Bar',
                  color: const Color(0xffFFE082),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ProgressBarScreen()));
                  },
                ),
                MainButton(
                  icon: const FaIcon(FontAwesomeIcons.rotate),
                  title: 'Rotate Navigation',
                  color: const Color(0xffFF7043),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => RotationNavigationScreen()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainButton(
                  icon: FaIcon(FontAwesomeIcons.square),
                  title: 'Flutter Bloc',
                  color: Color(0xffFF7043),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => RotationNavigationScreen()));
                  },
                ),
                MainButton(
                  icon: FaIcon(FontAwesomeIcons.maximize),
                  title: 'Expanding Cards',
                  color: Color(0xffFF7043),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ExpandingCardsScreen()));
                  },
                ),
                MainButton(
                  icon: FaIcon(FontAwesomeIcons.maximize),
                  title: 'Expanding Cards',
                  color: Color(0xffFF7043),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ExpandingCardsScreen()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainButton(
                  icon: FaIcon(FontAwesomeIcons.maximize),
                  title: 'Expanding Cards',
                  color: Color(0xffFF7043),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ExpandingCardsScreen()));
                  },
                ),
                MainButton(
                  icon: FaIcon(FontAwesomeIcons.maximize),
                  title: 'Expanding Cards',
                  color: Color(0xffFF7043),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ExpandingCardsScreen()));
                  },
                ),
                MainButton(
                  icon: FaIcon(FontAwesomeIcons.maximize),
                  title: 'Expanding Cards',
                  color: Color(0xffFF7043),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ExpandingCardsScreen()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
