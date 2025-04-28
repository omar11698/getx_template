import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';

/// Defines text styles for the Light Theme.
abstract class OLightTextTheme {
  static TextTheme textTheme = TextTheme(
    // Display Styles
    displayLarge: const TextStyle().copyWith(fontSize: 57.0, fontWeight: FontWeight.bold, color: OColors.textPrimary),
    displayMedium: const TextStyle().copyWith(fontSize: 45.0, fontWeight: FontWeight.bold, color: OColors.textPrimary),
    displaySmall: const TextStyle().copyWith(fontSize: 36.0, fontWeight: FontWeight.bold, color: OColors.textPrimary),

    // Headline Styles
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: OColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(fontSize: 28.0, fontWeight: FontWeight.w600, color: OColors.textPrimary), // Common for AppBar titles
    headlineSmall: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: OColors.textPrimary),

    // Title Styles
    titleLarge: const TextStyle().copyWith(fontSize: 22.0, fontWeight: FontWeight.w600, color: OColors.textPrimary),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: OColors.textPrimary), // Common for list tiles
    titleSmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: OColors.textPrimary),

    // Body Styles
    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.normal, color: OColors.textPrimary), // Default Text() style
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: OColors.textPrimary),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: OColors.textSecondary),

    // Label Styles
    labelLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: OColors.textPrimary), // Common for Buttons
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: OColors.textSecondary),
    labelSmall: const TextStyle().copyWith(fontSize: 11.0, fontWeight: FontWeight.w500, color: OColors.textDisabled),
  );
}