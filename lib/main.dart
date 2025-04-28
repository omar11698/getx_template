import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_template/app/core/bindings/app_binding.dart';
import 'package:getx_template/app/core/localization/translation_service.dart';
import 'package:getx_template/app/core/theme/app_theme.dart';
import 'package:getx_template/app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GetX Starter Template",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: OBindings(),
      defaultTransition: Transition.fade,
      locale: OTranslationService.locale,
      fallbackLocale: OTranslationService.fallbackLocale,
      translations: OTranslationService(),
      theme: OTheme.light,
      darkTheme: OTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
