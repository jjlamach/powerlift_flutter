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

  static Container appCircle({Widget? child}) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff333333),
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
