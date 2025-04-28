import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';

/// Defines ElevatedButton styles for the Light Theme.
abstract class OLightElevatedButtonTheme {
  static final ElevatedButtonThemeData theme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0, // Example: flat design
      foregroundColor: OColors.white, // Text color
      backgroundColor: OColors.primary,
      disabledForegroundColor: OColors.textDisabled,
      disabledBackgroundColor: OColors.greyLight,
      side: const BorderSide(color: OColors.primary), // Optional border
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(fontSize: 16, color: OColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}