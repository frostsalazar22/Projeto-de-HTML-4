import 'package:flutter/material.dart';
import '../../../features/info/presentation/styles/info_style.dart';
import '../styles/menu_styles.dart';

class ResponsiveMenu extends StatelessWidget {
  final Function(String route) onNavigate;

  const ResponsiveMenu({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return isMobile ? _mobileMenu(context) : _desktopMenu(context);
  }

  // █████████ MOBILE – DRAWER
  Widget _mobileMenu(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: MenuStyles.drawerBg,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: AppColors.header),
              child: Text("Menu", style: AppText.h2),
            ),
            ..._menuTiles(context),
          ],
        ),
      ),
    );
  }

  // █████████ DESKTOP – BOTÕES NO APPBAR
  Widget _desktopMenu(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: _simpleItems.map((item) {
        return TextButton(
          style: MenuStyles.desktopButton,
          onPressed: () => onNavigate(item['route']!),
          child: Text(item['label']!, style: AppText.body),
        );
      }).toList(),
    );
  }

  // █████ LISTA PADRÃO
  List<Map<String, String>> get _simpleItems => [
    {"label": "Início", "route": "/"},
    {"label": "Sobre", "route": "/"},
    {"label": "Serviços", "route": "/"},
    {"label": "Depoimentos", "route": "/"},
    {"label": "Login", "route": "/auth"},
  ];

  List<Widget> _menuTiles(BuildContext context) {
    return _simpleItems.map((item) {
      return ListTile(
        title: Text(item["label"]!, style: MenuStyles.item),
        onTap: () {
          Navigator.pop(context);
          onNavigate(item["route"]!);
        },
      );
    }).toList();
  }
}
