import 'package:get/get.dart';
import 'package:getx_template/app/core/theme/theme_controller.dart.dart';
import 'package:getx_template/app/core/utils/api/dio_handler.dart';
import 'package:getx_template/app/data/data_source/remote_data_source.dart';

class OBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ODioHandler());
    Get.lazyPut(() => RemoteDataSource(Get.find<ODioHandler>()));
    Get.put(ThemeController());
  }
}
