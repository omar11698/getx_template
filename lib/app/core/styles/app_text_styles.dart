import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';

abstract class AppTextStyles {
  static const heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const bodyText = TextStyle(
    fontSize: 16,
    color: AppColors.text,
  );

  static const smallText = TextStyle(
    fontSize: 12,
    color: AppColors.grey,
  );
}