import 'package:get/get.dart';
import 'package:getx_template/app/core/utils/api/dio_handler.dart';
import 'package:getx_template/app/data/data_source/remote_data_source.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Registering the DioHandler and RemoteDataSource
    Get.lazyPut<RemoteDataSource>(
      () => RemoteDataSource(
        Get.find<
          ODioHandler
        >(), // Assuming DioHandler is registered in the dependency injection system
      ),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(
        remoteDataSource:
            Get.find<
              RemoteDataSource
            >(), // Injecting RemoteDataSource into HomeController
      ),
    );
  }
}
