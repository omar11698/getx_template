import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'en_us.dart';
import 'ar_eg.dart';

class TranslationService extends Translations {
  static final locale = Get.deviceLocale ?? const Locale('en', 'US');
  static const fallbackLocale = Locale('en', 'US');
  
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'ar_EG': arEG,
  };
}