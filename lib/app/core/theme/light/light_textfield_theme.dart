import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';
import 'light_text_theme.dart';

/// Defines InputDecoration styles for the Light Theme.
abstract class OLightTextFieldTheme {
   static final InputDecorationTheme theme = InputDecorationTheme(
     errorMaxLines: 3,
     prefixIconColor: OColors.greyDark,
     suffixIconColor: OColors.greyDark,

     labelStyle: OLightTextTheme.textTheme.bodyLarge?.copyWith(color: OColors.textSecondary),
     hintStyle: OLightTextTheme.textTheme.bodyMedium?.copyWith(color: OColors.textSecondary),
     errorStyle: OLightTextTheme.textTheme.bodySmall?.copyWith(color: OColors.error),
     floatingLabelStyle: OLightTextTheme.textTheme.bodyLarge?.copyWith(color: OColors.textPrimary.withOpacity(0.8)),

     border: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 1, color: OColors.border),
     ),
     enabledBorder: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 1, color: OColors.border),
     ),
     focusedBorder: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 1, color: OColors.primaryDark), // Highlight focus
     ),
     errorBorder: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 1, color: OColors.error),
     ),
     focusedErrorBorder: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 2, color: OColors.warning), // Example: thicker on error focus
     ),
   );
}