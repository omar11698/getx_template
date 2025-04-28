import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';
import 'light_text_theme.dart'; // To use consistent text styles

/// Defines AppBar styles for the Light Theme.
abstract class OLightAppBarTheme {
   static final AppBarTheme theme = AppBarTheme(
      elevation: 0, // Example: flat design
      centerTitle: false, // Example: align title left
      scrolledUnderElevation: 0,
      backgroundColor: OColors.scaffoldBackground, // Or OColors.primary
      surfaceTintColor: Colors.transparent, // Prevents color change on scroll
      iconTheme: const IconThemeData(color: OColors.black, size: 24), // App bar icons
      actionsIconTheme: const IconThemeData(color: OColors.black, size: 24), // Action icons
      titleTextStyle: OLightTextTheme.textTheme.headlineMedium?.copyWith(color: OColors.textPrimary), // Use text theme
   );
}