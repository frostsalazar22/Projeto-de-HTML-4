import 'package:flutter/material.dart';

/// 🎨 Paleta de Cores baseada no template fornecido
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

  static const subtitle = TextStyle(fontSize: 14, color: AppColors.textOverlay);

  static const footer = TextStyle(fontSize: 13, color: AppColors.textMuted);

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
  static ButtonStyle navBtn =
      OutlinedButton.styleFrom(
        foregroundColor: AppColors.accent,
        side: BorderSide(color: AppColors.accent),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ).copyWith(
        overlayColor: WidgetStateProperty.all(
          AppColors.accent.withOpacity(0.2),
        ),
      );
}
