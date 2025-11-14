import 'package:flutter/material.dart';
import '../../features/info/presentation/styles/info_style.dart';

class MenuStyles {
  static TextStyle item =
      const TextStyle(fontSize: 16, color: AppColors.textSecondary);

  static TextStyle itemActive =
      const TextStyle(fontSize: 16, color: AppColors.accent);

  static BoxDecoration drawerBg = const BoxDecoration(
    color: AppColors.header,
  );

  static const double menuHeight = 65;

  static ButtonStyle desktopButton = TextButton.styleFrom(
    foregroundColor: AppColors.accent,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  );
}
