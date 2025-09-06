import 'package:flutter/material.dart';
import '../atoms/custom_text_field.dart';
import '../atoms/primary_button.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: emailController, label: "Email"),
        const SizedBox(height: 12),
        CustomTextField(controller: passwordController, label: "Senha", obscure: true),
        const SizedBox(height: 20),
        PrimaryButton(text: "Entrar", onPressed: onLogin),
      ],
    );
  }
}
