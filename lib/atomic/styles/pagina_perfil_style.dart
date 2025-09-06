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
