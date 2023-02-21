import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:expanding_cards/provider/provider.dart';
import 'package:expanding_cards/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GetterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (_) => HomeScreen()},
      ),
    );
  }
}
