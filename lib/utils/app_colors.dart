import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  static Color orange = Color.fromRGBO(255, 149, 128, 1);
  static Color red = Color.fromRGBO(255, 127, 107, 1);
  static Color blue = Color.fromRGBO(167, 215, 242, 1);
  static Color yellow = Color.fromRGBO(250, 196, 127, 1);
  static Color pink = Color.fromRGBO(248, 218, 218, 1);
  static Color green = Color.fromRGBO(192, 222, 216, 1);

  static randomColor() {
    var colors = [
      orange,
      red,
      blue,
      yellow,
      pink,
      green,
    ];

    return colors[Random().nextInt(colors.length)];
  }
}
