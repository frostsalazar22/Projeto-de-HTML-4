import 'package:flutter/material.dart';
import '../organisms/auth_card.dart';
import '../styles/pagina_auth_style.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaginaAuthStyles.fundo,
      appBar: AppBar(
        backgroundColor: PaginaAuthStyles.card,
        title: const Text("Autenticação"),
        centerTitle: true,
      ),
      body: const Center(
        child: SizedBox(
          width: 380,
          child: AuthCard(),
        ),
      ),
    );
  }
}
