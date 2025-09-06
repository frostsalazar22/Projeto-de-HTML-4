import 'package:flutter/material.dart';
import '../atoms/custom_text_field.dart';
import '../atoms/primary_button.dart';

class ProfileInfoForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController bioController;
  final VoidCallback onSave;

  const ProfileInfoForm({
    super.key,
    required this.usernameController,
    required this.emailController,
    required this.bioController,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: usernameController, label: "Nome de Usuário"),
        const SizedBox(height: 12),
        CustomTextField(controller: emailController, label: "Email"),
        const SizedBox(height: 12),
        CustomTextField(controller: bioController, label: "Biografia"),
        const SizedBox(height: 20),
        PrimaryButton(text: "Salvar Alterações", onPressed: onSave),
      ],
    );
  }
}
