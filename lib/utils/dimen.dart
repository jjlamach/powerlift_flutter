import 'dart:math' as math;

import 'package:flutter/material.dart';

class Dimen {
  // TODO: The latest iphone is 1000 in screen height
  // TODO: Refactor
  static bool isBigScreen(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    // Large screen
    if (height > 1000) {
      return true;
      // Small screen
    } else {
      return false;
    }
  }

  static const double iconSize = 30;
}
