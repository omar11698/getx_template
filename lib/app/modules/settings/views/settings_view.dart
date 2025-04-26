import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_template/app/core/constants/app_strings.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.SETTINGS.tr), centerTitle: true),
      body: Center(
        child: ListTile(
          leading: Icon(Icons.language),
          title: Text(AppStrings.ENGLISH.tr),
          subtitle: Text(AppStrings.SELECT_YOUR_PREFERRED_LANGUAGE.tr),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Handle language selection
            if (Get.locale?.languageCode == 'ar') {
              Get.defaultDialog(
                title: AppStrings.LANGUAGE_CONFIRMATION_TITLE.tr,
                content: Text(AppStrings.LANGUAGE_CONFIRMATION_MESSAGE.tr),
                onConfirm: () {
                  Get.back();
                  controller.changeLanguague(const Locale('en', 'US'));
                  Get.snackbar(
                    AppStrings.LANGUAGE_CHANGED.tr,
                    AppStrings.LANGUAGE_CHANGE_SUCCESS.tr,
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    colorText: Colors.white,
                    duration: const Duration(seconds: 2),
                  );
                },
                onCancel: () {
                  Get.back();
                },
              );
              // controller.changeLanguague(const Locale('en', 'US'));
            } else {
              // Change to Arabic
              Get.defaultDialog(
                title: AppStrings.LANGUAGE_CONFIRMATION_TITLE.tr,
                content: Text(AppStrings.LANGUAGE_CHANGE_FAILED.tr),
                onConfirm: () {
                  Get.back();
                  controller.changeLanguague(const Locale('ar', 'EG'));
                  Get.snackbar(
                    AppStrings.LANGUAGE_CHANGED.tr,
                    AppStrings.LANGUAGE_CHANGE_SUCCESS.tr,
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    colorText: Colors.white,
                    duration: const Duration(seconds: 2),
                  );
                },
                onCancel: () {
                  Get.back();
                },
              );
            }
          },
        ),
      ),
    );
  }
}
