import 'package:expanding_cards/screens/expanding_cards_screen.dart';
import 'package:expanding_cards/screens/progress_bar_screen.dart';
import 'package:flutter/material.dart';

import 'package:expanding_cards/widgets/main_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Color(0xff007AFF),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProgressBarScreen(
                                  porcentaje: 100,
                                )));
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
