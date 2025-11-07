import 'package:flutter/material.dart';
import '../widgets/auth_card.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Autenticação')),
      body: const Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: AuthCard(),
        ),
      ),
    );
  }
}
