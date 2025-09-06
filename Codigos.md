lib/
├── atomic/
│   ├── atoms/
│   │   ├── custom_text_field.dart
│   │   ├── primary_button.dart
│   │   ├── secondary_button.dart
│   │   ├── app_logo.dart
│   │   ├── custom_tab.dart
│   │   ├── section_title.dart
│   │   ├── custom_icon_button.dart
│   │   └── custom_card.dart
│   │
│   ├── molecules/
│   │   ├── login_form.dart
│   │   ├── register_form.dart
│   │   ├── profile_info_form.dart
│   │   └── api_list_tile.dart
│   │
│   ├── organisms/
│   │   ├── auth_card.dart
│   │   └── profile_page_body.dart
│   │
│   ├── page/
│   │   ├── pagina_auth.dart
│   │   ├── pagina_info.dart
│   │   ├── pagina_perfil.dart
│   │
│   ├── styles/
│   │   ├── pagina_auth_style.dart
│   │   ├── pagina_info_style.dart
│   │   ├── pagina_perfil_style.dart
└── main.dart








Codigos
custom_text_field.dart
(
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscure;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.obscure = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      validator: validator,
    );
  }
}

)
primary_button.dart
(
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        minimumSize: const Size(double.infinity, 48),
      ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}

)
secondary_button.dart
(
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SecondaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.amber),
        minimumSize: const Size(double.infinity, 48),
      ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(color: Colors.amber)),
    );
  }
}

)
app_logo.dart
(
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.sports_esports, color: Colors.amber, size: 50);
  }
}

)
custom_tab.dart
(
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String label;

  const CustomTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(text: label);
  }
}

)
section_title.dart
(
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}

)
custom_icon_button.dart
(
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomIconButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Colors.amber),
      onPressed: onPressed,
    );
  }
}

)
custom_card.dart
(
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black54, blurRadius: 10, offset: Offset(0, 4)),
        ],
      ),
      child: child,
    );
  }
}

)
login_form.dart
(
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

)
register_form.dart
(
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

)
profile_info_form.dart
(
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

)
api_list_tile.dart
(
import 'package:flutter/material.dart';
import '../atoms/custom_card.dart';

class ApiListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const ApiListTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: ListTile(
        title: Text(title, style: const TextStyle(color: Colors.amber)),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.white70)),
      ),
    );
  }
}

)
auth_card.dart
(
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

)
profile_page_body.dart
(
import 'package:flutter/material.dart';
import '../molecules/profile_info_form.dart';

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
    return ProfileInfoForm(
      usernameController: usernameController,
      emailController: emailController,
      bioController: bioController,
      onSave: () {},
    );
  }
}

)
pagina_auth.dart
(
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

)
pagina_info.dart
(
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../styles/pagina_info_style.dart';

class InformacoesPage extends StatelessWidget {
  // Lista de funcionalidades
  final List<Map<String, String>> funcionalidades = const [
    {
      "titulo": "📋 Criar Fichas",
      "descricao": "Monte fichas completas de criaturas, personagens e magias."
    },
    {
      "titulo": "📂 Listar Fichas",
      "descricao": "Acesse rapidamente suas criações organizadas em cards."
    },
    {
      "titulo": "✏️ Editar / Excluir",
      "descricao": "Atualize ou remova informações com facilidade e segurança."
    },
    {
      "titulo": "📤 Exportar PDF",
      "descricao": "Salve suas fichas em PDF para imprimir ou compartilhar."
    },
    {
      "titulo": "📚 Biblioteca com Sidebar",
      "descricao": "Uma área separada para organizar suas criações."
    },
    {
      "titulo": "🎮 Simulação",
      "descricao":
          "Escolha entre modos solo ou em grupo para simular combates e ações."
    },
    {
      "titulo": "👤 Gerenciamento de Perfil",
      "descricao":
          "Controle sua conta, preferências e fichas com autonomia."
    },
  ];

  const InformacoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Circuito RPG', style: AppText.h2),
        backgroundColor: AppColors.header,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppColors.header),
              child: Text("Menu", style: AppText.h2),
            ),
            ...["Início", "Sobre", "Serviços", "Depoimentos"]
                .map((e) => ListTile(title: Text(e, style: AppText.body))),
            const Divider(),
            ListTile(
              title: Text("Login", style: AppText.body),
              onTap: () => Navigator.pushNamed(context, '/auth'),
            ),
            ListTile(
              title: Text("Cadastro", style: AppText.body),
              onTap: () => Navigator.pushNamed(context, '/auth'),
            ),
            const Divider(),
            ListTile(
              title: Text("Perfil", style: AppText.body),
              onTap: () => Navigator.pushNamed(context, '/perfil'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHero(),
            _buildSobreProjeto(),
            _buildFuncionalidades(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: AppResponsive.isMobile(context)
                  ? Column(children: _buildExportSection())
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildExportSection(),
                    ),
            ),
            _buildTecnologias(),
            _buildStatus(),
            _buildRodape(),
          ],
        ),
      ),
    );
  }

  /// 🔹 HERO
  Widget _buildHero() {
    return Stack(
      children: [
        Image.asset(
          "assets/images/banner.jpg",
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 300,
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: AppDecorations.heroOverlay,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Propriedades Interativas",
                  style: AppText.h1.copyWith(fontFamily: 'NotoEmoji'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  "Explore infinitas possibilidades criativas",
                  style: AppText.subtitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// 🔹 SOBRE O PROJETO
  Widget _buildSobreProjeto() {
    return Container(
      color: AppColors.darkSection,
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/sobre.jpg",
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sobre o Projeto", style: AppText.h2),
                const SizedBox(height: 8),
                Text(
                  "Este é um sistema privado de RPG, criado em Laravel, que oferece uma plataforma completa "
                  "para criação, gestão e simulação de campanhas. O foco está em oferecer ferramentas práticas "
                  "para mestres e jogadores.",
                  style: AppText.body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 FUNCIONALIDADES
  Widget _buildFuncionalidades() {
    return Container(
      color: AppColors.header,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Text("Funcionalidades Principais", style: AppText.h2),
          const SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 220,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.35,
            ),
            items: funcionalidades.map((item) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: AppDecorations.cardDark,
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item["titulo"]!,
                      style: AppText.h3.copyWith(
                        color: AppColors.accentLight,
                        fontFamily: 'NotoEmoji',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item["descricao"]!,
                      style: AppText.body,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  /// 🔹 EXPORTAÇÃO
  List<Widget> _buildExportSection() {
    return [
      Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Importação e Exportação de Dados via Seeder",
              style: AppText.h2.copyWith(color: AppColors.header),
            ),
            const SizedBox(height: 16),
            Text(
              "Com um simples comando, você pode importar ou exportar todos os dados do sistema.",
              style: AppText.body.copyWith(color: Colors.black87),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: AppDecorations.codeBox,
              child: SelectableText(
                "php artisan db:seed --class=GuiaRPGSeeder",
                style: AppText.code,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              "Arquivo salvo em: database/seeders/GuiaRPGSeeder.php",
              style: AppText.body.copyWith(color: Colors.black54),
            ),
          ],
        ),
      ),
      const SizedBox(width: 16),
      Expanded(
        flex: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/export.jpg",
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];
  }

  /// 🔹 TECNOLOGIAS
  Widget _buildTecnologias() {
    return Container(
      color: AppColors.header,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text("Tecnologias Utilizadas", style: AppText.h2),
          const SizedBox(height: 16),
          Column(
            children: ["Laravel", "XAMPP", "MySQL", "Bootstrap"]
                .map((tech) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check, color: AppColors.accent),
                          const SizedBox(width: 10),
                          Text(tech, style: AppText.body),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  /// 🔹 STATUS
  Widget _buildStatus() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            "Status do Projeto",
            style: AppText.h2.copyWith(color: AppColors.header),
          ),
          const SizedBox(height: 8),
          Text(
            "Todos os módulos estão com o CRUD completo e suporte à exportação PDF e Seeder.",
            style: AppText.body.copyWith(color: Colors.black87),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              "Criaturas",
              "Equipamentos",
              "Personagens",
              "Magias",
              "Habilidades",
              "Cenários"
            ]
                .map((item) => ListTile(
                      leading: const Icon(Icons.check_circle,
                          color: Colors.green),
                      title: Text(
                        item,
                        style: AppText.body.copyWith(color: Colors.black),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  /// 🔹 RODAPÉ
  Widget _buildRodape() {
    return Container(
      color: AppColors.footer,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Center(
        child: Text(
          "© ${DateTime.now().year} Circuito RPG — Todos os direitos reservados.",
          style: AppText.footer,
        ),
      ),
    );
  }
}

)
pagina_perfil.dart
(
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

)
pagina_auth_style.dart
(
import 'package:flutter/material.dart';

class PaginaAuthStyles {
  static const Color fundo = Color(0xFF101820);
  static const Color card = Color(0xFF1A242F);
  static const Color destaque = Color(0xFFFFD67B);
  static const Color texto = Colors.white;
  static const Color textoSuave = Color(0xFFF5E9D2);
  static const Color bordaInput = Color(0xFF2C3A4A);

  static const TextStyle titulo = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: destaque,
  );

  static const TextStyle subtitulo = TextStyle(
    fontSize: 16,
    color: textoSuave,
  );

  static InputDecoration input(String label) => InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: textoSuave),
        filled: true,
        fillColor: fundo,
        contentPadding: const EdgeInsets.all(12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: bordaInput, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: destaque, width: 1.0),
        ),
      );

  static ButtonStyle botaoAmarelo = ElevatedButton.styleFrom(
    backgroundColor: destaque,
    foregroundColor: fundo,
    minimumSize: const Size(double.infinity, 48),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
  );

  static BoxDecoration containerBox = BoxDecoration(
    color: card,
    borderRadius: BorderRadius.circular(15),
    boxShadow: const [
      BoxShadow(color: Colors.black54, blurRadius: 20, offset: Offset(0, 6)),
    ],
  );
}

)
pagina_info_style.dart
(
import 'package:flutter/material.dart';

/// 🎨 Paleta de Cores baseada no CSS
class AppColors {
  static const background = Color(0xFF101820);
  static const header = Color(0xFF1A242F);
  static const darkSection = Color(0xFF1A1F26);
  static const cardDark = Color(0xFF1F2A37);
  static const accent = Color(0xFFFFD67B);
  static const accentLight = Color(0xFFF5E9D2);
  static const footer = Color(0xFF0D1218);

  static const textPrimary = Colors.white;
  static const textSecondary = Color(0xFFDCDCDC);
  static const textMuted = Color(0xFFAAAAAA);
  static const textOverlay = Color(0xFFCCCCCC);

  static const codeBackground = Color(0xFFE9ECEF);
  static const codeText = Color(0xFF343A40);
}

/// 🔤 Estilos de Texto
class AppText {
  static const h1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static const h2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static const h3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const body = TextStyle(
    fontSize: 16,
    color: AppColors.textSecondary,
    height: 1.7,
  );

  static const subtitle = TextStyle(
    fontSize: 14,
    color: AppColors.textOverlay,
  );

  static const footer = TextStyle(
    fontSize: 13,
    color: AppColors.textMuted,
  );

  static const code = TextStyle(
    fontSize: 15,
    color: AppColors.codeText,
    backgroundColor: AppColors.codeBackground,
    fontWeight: FontWeight.w600,
    fontFamily: "monospace",
  );
}

/// 🖼️ Decorações e Containers
class AppDecorations {
  /// Hero Overlay
  static BoxDecoration heroOverlay = BoxDecoration(
    color: const Color.fromRGBO(16, 24, 32, 0.9),
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        blurRadius: 20,
        offset: Offset(0, 10),
      ),
    ],
  );

  /// Card padrão
  static BoxDecoration cardDark = BoxDecoration(
    color: AppColors.cardDark,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: 6,
        offset: Offset(0, 3),
      ),
    ],
  );

  /// Código destacado
  static BoxDecoration codeBox = BoxDecoration(
    color: AppColors.codeBackground,
    borderRadius: BorderRadius.circular(6),
  );
}

/// 📐 Helpers para responsividade
class AppResponsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static bool isUltraWide(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1600;
}

/// 🔘 Estilos de Botões (baseado no CSS .nav-btn)
class AppButtons {
  static ButtonStyle navBtn = OutlinedButton.styleFrom(
    foregroundColor: AppColors.accent,
    side: BorderSide(color: AppColors.accent),
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
    textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  ).copyWith(
    overlayColor: WidgetStateProperty.all(AppColors.accent.withOpacity(0.2)),
  );
}

)
pagina_perfil_style.dart
(
import 'package:flutter/material.dart';

/// Estilos convertidos 1:1 do CSS original da tela de login
class PerfilStyles {
  // ====== Paleta / base ======
  static const Color fundo = Color(0xFF101820);      // body background
  static const Color card = Color(0xFF1A242F);       // .container
  static const Color texto = Color(0xFFFFFFFF);
  static const Color textoSuave = Color(0xFFF5E9D2); // labels / abas
  static const Color destaque = Color(0xFFFFD67B);   // active / botão
  static const Color destaqueHover = Color(0xFFE6BD60);
  static const Color bordaInput = Color(0xFF2C3A4A);
  static const Color textoBotao = Color(0xFF1A242F);
  static const Color visitor = Color(0xFFCCCCCC);

  // Tipografia-base (equivalente ao body no CSS)
  static const TextStyle baseText =
      TextStyle(fontFamily: 'Segoe UI, Tahoma, sans-serif', color: texto);

  // ====== Container principal (.container) ======
  static const double containerWidth = 380; // width: 380px;
  static const EdgeInsets containerPadding =
      EdgeInsets.symmetric(vertical: 32, horizontal: 40); // 2rem 2.5rem
  static BoxDecoration get containerBox => BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.6),
            blurRadius: 25,
            offset: Offset(0, 10),
          ),
        ],
      );

  // ====== Abas (.tabs / .tab / .tab.active) ======
  static const EdgeInsets tabPadding =
      EdgeInsets.symmetric(vertical: 12.8); // 0.8rem
  static const TextStyle tab =
      TextStyle(fontWeight: FontWeight.bold, color: textoSuave);
  static const TextStyle tabAtiva =
      TextStyle(fontWeight: FontWeight.bold, color: destaque);

  // Para usar em TabBar
  static const Color tabLabelColor = destaque; // active
  static const Color tabUnselectedColor = textoSuave; // default
  static const UnderlineTabIndicator tabIndicator = UnderlineTabIndicator(
    borderSide: BorderSide(color: destaque, width: 2), // border-bottom: 2px
  );

  // ====== Inputs (.form-group input / :focus) ======
  static const TextStyle label =
      TextStyle(color: textoSuave, fontSize: 14.4); // 0.9rem
  static InputDecoration input(String labelText) => InputDecoration(
        labelText: labelText,
        labelStyle: label,
        filled: true,
        fillColor: fundo, // background-color: #101820
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: bordaInput, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: destaque, width: 1.0),
        ),
      );

  // ====== Botão padrão (button / :hover) ======
  static ButtonStyle get botaoAmarelo => ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.hovered) ||
              states.contains(MaterialState.pressed)) {
            return destaqueHover; // hover
          }
          return destaque;
        }),
        foregroundColor:
            MaterialStateProperty.all<Color>(textoBotao), // color: #1a242f
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 12),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(fontWeight: FontWeight.bold, fontSize: 16), // 1rem
        ),
        elevation: MaterialStateProperty.all<double>(0),
      );

  // ====== “Visitante” (link) ======
  static const TextStyle visitorText =
      TextStyle(color: visitor, fontSize: 14.4); // 0.9rem

  // Use em TextButton.styleFrom(foregroundColor: …)
  static MaterialStateProperty<Color?> get visitorLinkColor =>
      MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.hovered)) return destaque;
        return visitor;
      });
}

)
main.dart
(
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

)
