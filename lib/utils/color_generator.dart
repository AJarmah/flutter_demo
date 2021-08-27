import 'dart:math';

import 'package:flutter/material.dart';

class ColorGenerator {
  Random _random = Random();
  //256 * 256 * 256 = 16777216
  static const _max = 255;
  Color _stateColor = Colors.white;
  Color get stateColor => _stateColor;
  Color _textColor = Colors.black;
  Color get textColor => _textColor;
  void generate() {
    _stateColor = _generateColor();
    _textColor = _generateColor();
  }

  Color _generateColor() {
    return Color.fromARGB(
      _max,
      _random.nextInt(_max),
      _random.nextInt(_max),
      _random.nextInt(_max),
    );
  }
}
