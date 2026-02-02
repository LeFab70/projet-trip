import 'package:flutter/material.dart';

class AppColors {
  // --- Couleurs Primaires (Le Bleu Voyage) ---
  static const Color primaryBlue = Color(0xFF1A73E8); // Bleu Royal
  static const Color secondaryBlue = Color(0xFF00B4D9); // Bleu Lagon
  static const Color lightBlue = Color(
    0xFFCAF0F8,
  ); // Bleu Très Clair (Bulle/Fond)

  // --- Backgrounds ---
  static const Color bgLight = Color(0xFFF8FAFF); // Fond de l'app (Bleu givré)
  static const Color bgDark = Color(0xFF051D40); // Fond Sombre / Marine

  // --- Couleurs de Texte ---
  static const Color textMain = Color(
    0xFF051D40,
  ); // Marine foncé (Très lisible)
  static const Color textSecondary = Color(
    0xFF64748B,
  ); // Gris bleuâtre pour sous-titres
  static const Color textWhite = Colors.white;

  // --- Utilitaires ---
  static const Color accentGold = Color(
    0xFFFFD700,
  ); // Or (pour les étoiles/avis voyage)

  static Gradient oceanGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryBlue, secondaryBlue],
  );
}
