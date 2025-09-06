import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String label;

  const CustomTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(text: label);
  }
}
