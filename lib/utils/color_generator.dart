import 'dart:math';

import 'package:flutter/material.dart';

class ColorGenerator {
  Random _random = Random();
  static const _max = 255;
  //256 * 256 * 256 = 16....M
  Color call() {
    return Color.fromARGB(
      _max,
      _random.nextInt(_max),
      _random.nextInt(_max),
      _random.nextInt(_max),
    );
  }
}
