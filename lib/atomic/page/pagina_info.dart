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
