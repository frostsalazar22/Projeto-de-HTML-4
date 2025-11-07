import 'package:flutter/material.dart';
import 'core/di/injector.dart';
import 'features/auth/presentation/pages/auth_page.dart';
import 'features/info/presentation/pages/info_page.dart';
import 'features/perfil/presentation/pages/perfil_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjector.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // If there are no providers to register yet, avoid using MultiProvider with
    // an empty list because provider's implementation uses `nested` which
    // asserts that children are not empty. Use MaterialApp directly until
    // providers are added.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circuito RPG',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Start at the Info page. Navigation flow:
      // 1) InfoPage -> button -> AuthPage
      // 2) AuthPage -> after login/register -> PerfilPage
      initialRoute: '/',
      routes: {
        '/': (_) => const InformacoesPage(),
        '/auth': (_) => const AuthPage(),
        '/profile': (_) => const PaginaPerfil(),
      },
    );
  }
}
