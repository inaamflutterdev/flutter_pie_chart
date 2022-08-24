import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  double _stateManagementTime = 0.5;

  double get stateManagementTime => _stateManagementTime;

  set stateManagementTime(double newValue) {
    _stateManagementTime = newValue;
    notifyListeners();
  }
}
