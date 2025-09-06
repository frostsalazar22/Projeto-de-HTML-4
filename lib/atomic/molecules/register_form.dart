import 'package:flutter/material.dart';
import '../atoms/custom_text_field.dart';
import '../atoms/primary_button.dart';

class RegisterForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmController;
  final VoidCallback onRegister;

  const RegisterForm({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmController,
    required this.onRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: nameController, label: "Nome"),
        const SizedBox(height: 12),
        CustomTextField(controller: emailController, label: "Email"),
        const SizedBox(height: 12),
        CustomTextField(controller: passwordController, label: "Senha", obscure: true),
        const SizedBox(height: 12),
        CustomTextField(controller: confirmController, label: "Confirmar Senha", obscure: true),
        const SizedBox(height: 20),
        PrimaryButton(text: "Criar Conta", onPressed: onRegister),
      ],
    );
  }
}
