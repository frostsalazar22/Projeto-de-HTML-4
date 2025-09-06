import 'package:flutter/material.dart';
import '../organisms/profile_page_body.dart';
import '../styles/pagina_perfil_style.dart';

class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({super.key});

  @override
  State<PaginaPerfil> createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil> {
  final usernameController = TextEditingController(text: "FrostSalazar");
  final emailController = TextEditingController(text: "frost@circuitorp.com");
  final bioController = TextEditingController(
    text: "Mestre de RPG apaixonado por criar aventuras épicas.",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PerfilStyles.fundo,
      appBar: AppBar(
        backgroundColor: PerfilStyles.card,
        title: const Text("Perfil"),
      ),
      body: Center(
        child: Container(
          width: PerfilStyles.containerWidth,
          padding: PerfilStyles.containerPadding,
          decoration: PerfilStyles.containerBox,
          child: ProfilePageBody(
            usernameController: usernameController,
            emailController: emailController,
            bioController: bioController,
          ),
        ),
      ),
    );
  }
}
