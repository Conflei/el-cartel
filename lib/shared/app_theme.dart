import 'package:flutter/material.dart';

/// Application theme configuration
class AppTheme {
  // Color palette - Military/Sci-Fi Theme
  static const Color primaryColor = Color(0xFF1A1A1A); // Tactical black
  static const Color secondaryColor = Color(0xFF2D3748); // Dark gray
  static const Color accentColor = Color(0xFF00FF41); // Matrix green
  static const Color errorColor = Color(0xFFFF0040); // Alert red
  static const Color warningColor = Color(0xFFFFA500); // Amber warning
  static const Color successColor = Color(0xFF00FF7F); // Spring green

  // Light theme colors - Military/Sci-Fi
  static const Color lightBackgroundColor = Color(0xFF0A0A0A); // Near black
  static const Color lightSurfaceColor = Color(0xFF1A1A1A); // Dark surface
  static const Color lightOnSurfaceColor = Color(
    0xFF00FF41,
  ); // Matrix green text

  // Dark theme colors - Military/Sci-Fi
  static const Color darkBackgroundColor = Color(0xFF000000); // Pure black
  static const Color darkSurfaceColor = Color(0xFF0A0A0A); // Very dark gray
  static const Color darkOnSurfaceColor = Color(
    0xFF00FF7F,
  ); // Bright green text

  /// Light theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: accentColor,
        error: errorColor,
        surface: lightSurfaceColor,
        onSurface: lightOnSurfaceColor,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: lightBackgroundColor,
        foregroundColor: lightOnSurfaceColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  /// Dark theme
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: accentColor,
        error: errorColor,
        surface: darkSurfaceColor,
        onSurface: darkOnSurfaceColor,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: darkBackgroundColor,
        foregroundColor: darkOnSurfaceColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
