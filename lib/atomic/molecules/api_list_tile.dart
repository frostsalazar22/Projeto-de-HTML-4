import 'package:flutter/material.dart';
import '../atoms/custom_card.dart';

class ApiListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const ApiListTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: ListTile(
        title: Text(title, style: const TextStyle(color: Colors.amber)),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.white70)),
      ),
    );
  }
}
