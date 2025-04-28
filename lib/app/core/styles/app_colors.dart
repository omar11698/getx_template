import 'package:flutter/material.dart';

/// A central place for all app colors.
/// Extend or customize this according to your design system.
abstract class OColors {
  // Primary Brand Colors
  static const Color primary = Color(0xFF0066FF);
  static const Color primaryLight = Color(0xFF3385FF);
  static const Color primaryDark = Color(0xFF004FCC);

  // Secondary Brand Colors
  static const Color secondary = Color(0xFFFF6600);
  static const Color secondaryLight = Color(0xFFFF8533);
  static const Color secondaryDark = Color(0xFFCC5200);

  // Background Colors
  static const Color background = Color(0xFFF5F5F5); // Light theme background
  static const Color scaffoldBackground = Color(0xFFFFFFFF); // Light theme scaffold

  // Text Colors
  static const Color textPrimary = Color(0xFF333333); // Dark text for light backgrounds
  static const Color textSecondary = Color(0xFF666666);
  static const Color textDisabled = Color(0xFF999999);

  // Basic Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // Neutral Greys
  static const Color grey = Colors.grey; // Use specific shades below more often
  static const Color greyLight = Color(0xFFEEEEEE);
  static const Color greyDark = Color(0xFF555555);
  static const Color greyVeryDark = Color(0xFF333333); // Added for dark theme text
  static const Color darkBackground = Color(0xFF121212); // Common dark theme bg
  static const Color darkScaffoldBackground = Color(0xFF1E1E1E); // Common dark scaffold

  // Status Colors
  static const Color success = Color(0xFF28A745);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFDC3545);
  static const Color info = Color(0xFF17A2B8);

  // Borders and Dividers
  static const Color border = Color(0xFFE0E0E0); // Light theme border
  static const Color divider = Color(0xFFBDBDBD); // Light theme divider
  static const Color darkBorder = Color(0xFF424242); // Dark theme border
  static const Color darkDivider = Color(0xFF616161); // Dark theme divider

  // Shadows
  static const Color shadow = Color(0x29000000); // 16% opacity black (might need adjustment for dark)
  static const Color darkShadow = Color(0x4DFFFFFF); // Example: Lighter shadow for dark theme
}