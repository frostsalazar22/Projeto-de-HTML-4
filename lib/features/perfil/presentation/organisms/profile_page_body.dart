import 'package:flutter/material.dart';
import '../styles/pagina_perfil_style.dart';

class ProfilePageBody extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController bioController;

  const ProfilePageBody({
    super.key,
    required this.usernameController,
    required this.emailController,
    required this.bioController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleAvatar(radius: 48, child: Icon(Icons.person, size: 48)),
        const SizedBox(height: 12),
        TextField(
          controller: usernameController,
          decoration: PerfilStyles.input('Nome'),
          style: PerfilStyles.baseText,
        ),
        const SizedBox(height: 12),
        TextField(
          controller: emailController,
          decoration: PerfilStyles.input('Email'),
          style: PerfilStyles.baseText,
        ),
        const SizedBox(height: 12),
        TextField(
          controller: bioController,
          decoration: PerfilStyles.input('Bio'),
          style: PerfilStyles.baseText,
          maxLines: 3,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: PerfilStyles.botaoAmarelo,
                onPressed: () {
                  // Simulate save
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('Perfil salvo')));
                },
                child: const Text('Salvar'),
              ),
            ),
            const SizedBox(width: 12),
            TextButton(
              onPressed: () {
                // Logout -> back to info
                Navigator.of(
                  context,
                ).pushNamedAndRemoveUntil('/', (r) => false);
              },
              style: TextButton.styleFrom(
                foregroundColor: PerfilStyles.visitor,
              ),
              child: Text('Sair', style: PerfilStyles.visitorText),
            ),
          ],
        ),
      ],
    );
  }
}
