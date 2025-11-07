import 'package:flutter/material.dart';

class ApiListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;

  const ApiListTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
      trailing: trailing,
    );
  }
}
