import 'package:flutter/material.dart';

// Imports reorganizados
import 'atomic/page/pagina_info.dart';
import 'atomic/page/pagina_perfil.dart';
import 'atomic/page/pagina_auth.dart';

void main() {
  runApp(const CircuitoRPGApp());
}

class CircuitoRPGApp extends StatelessWidget {
  const CircuitoRPGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circuito RPG',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeTempPage(),
        '/informacoes': (context) => const InformacoesPage(),
        '/perfil': (context) => const PaginaPerfil(),
        '/auth': (context) => const AuthPage(),
      },
    );
  }
}

class HomeTempPage extends StatelessWidget {
  const HomeTempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circuito RPG - Home"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/informacoes'),
              child: const Text("Página de Informações"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/perfil'),
              child: const Text("Página de Perfil"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/auth'),
              child: const Text("Página de Autenticação"),
            ),
          ],
        ),
      ),
    );
  }
}
