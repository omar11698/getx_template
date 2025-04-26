import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  // Define any properties or methods for your controller here
  void changeLanguague(Locale locale) {
    Get.updateLocale(locale);
  }
}
