import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _currentValue = 0;

  void _onValueChanged(double value) {
    setState(() => _currentValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentValue,
      min: 0,
      max: 100,
      // divisions: 5,
      label: _currentValue.toString(),
      onChanged: _onValueChanged,
    );
  }
}
