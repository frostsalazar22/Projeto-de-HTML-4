import 'package:flutter/material.dart';
import '../atoms/app_logo.dart';
import '../atoms/custom_tab.dart';
import '../molecules/login_form.dart';
import '../molecules/register_form.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({super.key});

  @override
  State<AuthCard> createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final emailLogin = TextEditingController();
  final senhaLogin = TextEditingController();

  final nomeRegistro = TextEditingController();
  final emailRegistro = TextEditingController();
  final senhaRegistro = TextEditingController();
  final confirmarSenha = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(24),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const AppLogo(),
            const SizedBox(height: 10),
            const Text("Bem-vindo ao Circuito RPG"),
            const SizedBox(height: 16),
            TabBar(
              controller: _tabController,
              tabs: const [
                CustomTab(label: "Login"),
                CustomTab(label: "Registro"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  LoginForm(
                    emailController: emailLogin,
                    passwordController: senhaLogin,
                    onLogin: () {},
                  ),
                  RegisterForm(
                    nameController: nomeRegistro,
                    emailController: emailRegistro,
                    passwordController: senhaRegistro,
                    confirmController: confirmarSenha,
                    onRegister: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
