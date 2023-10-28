import 'package:flutter/material.dart';

class Common {
  static SnackBar appSnackBar(String message) {
    return SnackBar(
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
