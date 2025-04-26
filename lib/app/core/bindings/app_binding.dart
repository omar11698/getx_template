import 'package:get/get.dart';
import 'package:getx_template/app/core/utils/api/dio_handler.dart';
import 'package:getx_template/app/data/data_source/remote_data_source.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DioHandler());
    Get.lazyPut(() => RemoteDataSource(Get.find<DioHandler>()));
  }

}