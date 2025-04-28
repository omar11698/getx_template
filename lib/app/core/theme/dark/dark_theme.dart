import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';
import 'package:getx_template/app/core/theme/dark/dark_textfield_theme.dart';
import 'dark_text_theme.dart';
import 'dark_elevated_button_theme.dart';
import 'dark_app_bar_theme.dart';
// Import other dark theme component files...

/// Defines the Dark Theme configuration.
abstract class ODarkTheme {
  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    fontFamily:
        'Poppins', // Match light theme font (ensure it's added in pubspec.yaml)
    brightness: Brightness.dark,
    primaryColor: OColors.primary, // Keep primary swatch consistent if desired
    scaffoldBackgroundColor: OColors.darkScaffoldBackground,
    textTheme: ODarkTextTheme.textTheme,
    elevatedButtonTheme: ODarkElevatedButtonTheme.theme,
    appBarTheme: ODarkAppBarTheme.theme,
    inputDecorationTheme: ODarkTextFieldTheme.theme,
    // Add other component themes here
    // cardTheme: ODarkCardTheme.theme,
    // chipTheme: ODarkChipTheme.theme,
    // bottomNavigationBarTheme: ODarkBottomNavTheme.theme,

    // Use ColorScheme for dark mode
    colorScheme: const ColorScheme.dark(
      primary: OColors.primaryLight, // Use lighter primary for better contrast
      secondary: OColors.secondaryLight, // Use lighter secondary
      error: OColors.error,
      surface: OColors.darkScaffoldBackground,
      onPrimary: OColors.black, // Text on primaryLight
      onSecondary: OColors.black,
      onSurface: OColors.white,
      onError: OColors.black, // Text on error color (adjust if needed)
      primaryContainer: OColors.primary, // Darker container variant
      onPrimaryContainer: OColors.white,
      secondaryContainer: OColors.secondary,
      onSecondaryContainer: OColors.white,
      brightness: Brightness.dark,
      // Define other scheme colors if needed
    ),

    dividerColor: OColors.darkDivider,
    // Define other global theme properties
  );
}
