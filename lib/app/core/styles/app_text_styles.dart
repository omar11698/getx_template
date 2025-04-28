import 'package:flutter/material.dart';
import 'package:getx_template/app/core/styles/app_colors.dart';

abstract class OTextStyles {
  static const heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: OColors.text,
  );

  static const heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: OColors.text,
  );

  static const bodyText = TextStyle(fontSize: 16, color: OColors.text);

  static const smallText = TextStyle(fontSize: 12, color: OColors.grey);
}
