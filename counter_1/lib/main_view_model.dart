import 'package:counter_1/data/increment_api.dart';
import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  final IncrementApi api;

  MainViewModel(this.api);

  void increment() {
    _counter = api.increase(_counter);
    notifyListeners();
  }
}
