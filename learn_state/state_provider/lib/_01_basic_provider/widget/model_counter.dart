
import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int value = 0;

  void increase() {
    value++;
    notifyListeners();
  }

  void decrease() {
    value--;
    notifyListeners();
  }
}
