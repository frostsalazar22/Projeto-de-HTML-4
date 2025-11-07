import 'package:flutter/material.dart';

class PerfilStyle {
  static const double avatarSize = 120.0;
  static const double coverHeight = 200.0;
  static const double contentPadding = 16.0;

  static TextStyle nameStyle = const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bioStyle = const TextStyle(
    fontSize: 16.0,
    color: Colors.grey,
  );

  static BoxDecoration profileCardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.15),
        spreadRadius: 2,
        blurRadius: 6,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static InputDecoration textFieldDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      filled: true,
    );
  }
}
