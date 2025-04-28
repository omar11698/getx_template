import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';

/// Defines text styles for the Dark Theme.
abstract class ODarkTextTheme {
  // Use lighter text colors for dark backgrounds
  static TextTheme textTheme = TextTheme(
     displayLarge: const TextStyle().copyWith(fontSize: 57.0, fontWeight: FontWeight.bold, color: OColors.white),
     displayMedium: const TextStyle().copyWith(fontSize: 45.0, fontWeight: FontWeight.bold, color: OColors.white),
     displaySmall: const TextStyle().copyWith(fontSize: 36.0, fontWeight: FontWeight.bold, color: OColors.white),

     headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: OColors.white),
     headlineMedium: const TextStyle().copyWith(fontSize: 28.0, fontWeight: FontWeight.w600, color: OColors.white),
     headlineSmall: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: OColors.white),

     titleLarge: const TextStyle().copyWith(fontSize: 22.0, fontWeight: FontWeight.w600, color: OColors.white),
     titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: OColors.white),
     titleSmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: OColors.white),

     bodyLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.normal, color: OColors.white),
     bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: OColors.white),
     bodySmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: OColors.greyLight), // Slightly dimmer for less emphasis

     labelLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: OColors.white),
     labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: OColors.grey),
     labelSmall: const TextStyle().copyWith(fontSize: 11.0, fontWeight: FontWeight.w500, color: OColors.greyDark), // Even dimmer
  );
}