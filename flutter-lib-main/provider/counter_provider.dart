import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  // extend the class to ChangeNotifier to use it as provider
  int _count = 0;

  int getCount() => _count; //func to get val. of _count

  // events:
  // increment event
  void incrementCount() {
    _count++;
    notifyListeners();
  }

  // decrement event
  void decrementCount() {
    if (_count > 0) {
      _count--;
    }
    notifyListeners();
  }
}
