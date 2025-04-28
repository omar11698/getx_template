import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';
import 'package:getx_template/app/core/theme/light/light_textfield_theme.dart';
import 'light_text_theme.dart';
import 'light_elevated_button_theme.dart';
import 'light_app_bar_theme.dart';

/// Defines the Light Theme configuration.
abstract class OLightTheme {
  static ThemeData themeData = ThemeData(
    useMaterial3: true, // Recommended for new Flutter projects
    fontFamily: 'Poppins', // Example: Set your default font (ensure it's added in pubspec.yaml)
    brightness: Brightness.light,
    primaryColor: OColors.primary,
    scaffoldBackgroundColor: OColors.scaffoldBackground,
    textTheme: OLightTextTheme.textTheme,
    elevatedButtonTheme: OLightElevatedButtonTheme.theme,
    appBarTheme: OLightAppBarTheme.theme,
    inputDecorationTheme: OLightTextFieldTheme.theme,
    // Add other component themes here
    // cardTheme: OLightCardTheme.theme,
    // chipTheme: OLightChipTheme.theme,
    // bottomNavigationBarTheme: OLightBottomNavTheme.theme,

    // It's generally better to use ColorScheme for more comprehensive theming
    colorScheme: const ColorScheme.light(
      primary: OColors.primary,
      secondary: OColors.secondary,
      error: OColors.error, // Backgrounds behind cards, dialogs etc.
      surface: OColors.scaffoldBackground, // Surface color for components like Card, Dialog, BottomSheet
      onPrimary: OColors.white, // Text/icon color on primary color
      onSecondary: OColors.white, // Text/icon color on background color
      onSurface: OColors.textPrimary, // Text/icon color on surface color
      onError: OColors.white, // Text/icon color on error color
      primaryContainer: OColors.primaryLight, // Lighter container variant
      onPrimaryContainer: OColors.black,
      secondaryContainer: OColors.secondaryLight,
      onSecondaryContainer: OColors.black,
      brightness: Brightness.light,
      // Define other scheme colors if needed
    ),

    dividerColor: OColors.divider,
    // Define other global theme properties
  );
}