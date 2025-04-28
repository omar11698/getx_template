import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';

/// Defines ElevatedButton styles for the Dark Theme.
abstract class ODarkElevatedButtonTheme {
   static final ElevatedButtonThemeData theme = ElevatedButtonThemeData(
     style: ElevatedButton.styleFrom(
       elevation: 0,
       // Consider using primaryLight for better contrast on dark bg
       foregroundColor: OColors.black, // Text color - needs good contrast with bg
       backgroundColor: OColors.primaryLight,
       disabledForegroundColor: OColors.grey,
       disabledBackgroundColor: OColors.greyDark,
       side: const BorderSide(color: OColors.primaryLight),
       padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
       textStyle: const TextStyle(fontSize: 16, color: OColors.black, fontWeight: FontWeight.w600),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
     ),
   );
}