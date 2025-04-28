import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';
import 'dark_text_theme.dart';

/// Defines AppBar styles for the Dark Theme.
abstract class ODarkAppBarTheme {
   static final AppBarTheme theme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: OColors.darkScaffoldBackground, // Or OColors.primaryDark
      surfaceTintColor: Colors.transparent,
      iconTheme: const IconThemeData(color: OColors.white, size: 24),
      actionsIconTheme: const IconThemeData(color: OColors.white, size: 24),
      titleTextStyle: ODarkTextTheme.textTheme.headlineMedium?.copyWith(color: OColors.white),
   );
}