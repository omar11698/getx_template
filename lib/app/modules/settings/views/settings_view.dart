import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_template/app/core/constants/app_strings.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(OStrings.SETTINGS.tr), centerTitle: true),
      body: Center(
        child: ListTile(
          leading: Icon(Icons.language),
          title: Text(OStrings.ENGLISH.tr),
          subtitle: Text(OStrings.SELECT_YOUR_PREFERRED_LANGUAGE.tr),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Handle language selection
            if (Get.locale?.languageCode == 'ar') {
              Get.defaultDialog(
                title: OStrings.LANGUAGE_CONFIRMATION_TITLE.tr,
                content: Text(OStrings.LANGUAGE_CONFIRMATION_MESSAGE.tr),
                onConfirm: () {
                  Get.back();
                  controller.changeLanguague(const Locale('en', 'US'));
                  Get.snackbar(
                    OStrings.LANGUAGE_CHANGED.tr,
                    OStrings.LANGUAGE_CHANGE_SUCCESS.tr,
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
                title: OStrings.LANGUAGE_CONFIRMATION_TITLE.tr,
                content: Text(OStrings.LANGUAGE_CHANGE_FAILED.tr),
                onConfirm: () {
                  Get.back();
                  controller.changeLanguague(const Locale('ar', 'EG'));
                  Get.snackbar(
                    OStrings.LANGUAGE_CHANGED.tr,
                    OStrings.LANGUAGE_CHANGE_SUCCESS.tr,
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
