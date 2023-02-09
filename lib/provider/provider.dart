import 'package:flutter/material.dart';

class GetterProvider with ChangeNotifier {
  int _index = -1;

  int get index => _index;
  set index(int i) {
    _index = i;
    notifyListeners();
  }
}
