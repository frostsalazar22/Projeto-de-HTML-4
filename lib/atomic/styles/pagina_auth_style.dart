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
