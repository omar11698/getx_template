import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';
import 'dark_text_theme.dart';

/// Defines InputDecoration styles for the Dark Theme.
abstract class ODarkTextFieldTheme {
   static final InputDecorationTheme theme = InputDecorationTheme(
     errorMaxLines: 3,
     prefixIconColor: OColors.greyLight,
     suffixIconColor: OColors.greyLight,

     labelStyle: ODarkTextTheme.textTheme.bodyLarge?.copyWith(color: OColors.greyLight),
     hintStyle: ODarkTextTheme.textTheme.bodyMedium?.copyWith(color: OColors.grey),
     errorStyle: ODarkTextTheme.textTheme.bodySmall?.copyWith(color: OColors.error), // Error color might stay the same
     floatingLabelStyle: ODarkTextTheme.textTheme.bodyLarge?.copyWith(color: OColors.white.withOpacity(0.8)),

     border: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 1, color: OColors.darkBorder),
     ),
     enabledBorder: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 1, color: OColors.darkBorder),
     ),
     focusedBorder: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 1, color: OColors.primaryLight), // Use light primary for focus
     ),
     errorBorder: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 1, color: OColors.error),
     ),
     focusedErrorBorder: const OutlineInputBorder().copyWith(
       borderRadius: BorderRadius.circular(12.0),
       borderSide: const BorderSide(width: 2, color: OColors.warning),
     ),
   );
}