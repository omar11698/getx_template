import 'package:get/get.dart';
import 'package:getx_template/app/core/theme/theme_controller.dart.dart';

class OThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(() => ThemeController());
  }

}