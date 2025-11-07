import 'package:flutter/material.dart';
import 'package:circuito_rpg/core/components/login_form.dart';
import 'package:circuito_rpg/core/components/register_form.dart';
import 'package:circuito_rpg/core/widgets/custom_card.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({super.key});

  @override
  State<AuthCard> createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  bool showLogin = true;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedCrossFade(
            firstChild: LoginForm(
              onSubmit: (email, password) {
                // For now simulate successful login and navigate to profile
                Navigator.of(context).pushReplacementNamed('/profile');
              },
            ),
            secondChild: RegisterForm(
              onSubmit: (name, email, password) {
                // Simulate registration then navigate to profile
                Navigator.of(context).pushReplacementNamed('/profile');
              },
            ),
            crossFadeState: showLogin
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 250),
          ),
          const SizedBox(height: 12.0),
          TextButton(
            onPressed: () => setState(() => showLogin = !showLogin),
            child: Text(showLogin ? 'Criar conta' : 'Já tenho conta'),
          ),
        ],
      ),
    );
  }
}
