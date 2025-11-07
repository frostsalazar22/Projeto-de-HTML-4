import 'package:flutter/material.dart';

class InfoStyle {
  static const double contentPadding = 16.0;
  static const double cardSpacing = 12.0;

  static TextStyle titleStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subtitleStyle = const TextStyle(
    fontSize: 16.0,
    color: Colors.grey,
  );

  static BoxDecoration infoCardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 3,
        offset: const Offset(0, 2),
      ),
    ],
  );

  static EdgeInsets listPadding = const EdgeInsets.symmetric(
    vertical: 8.0,
    horizontal: 16.0,
  );
}
