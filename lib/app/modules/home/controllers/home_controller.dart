import 'package:get/get.dart';
import 'package:getx_template/app/data/data_source/remote_data_source.dart';
import 'package:getx_template/app/data/models/product_model.dart';

class HomeController extends GetxController {
  final RemoteDataSource remoteDataSource;
  HomeController({required this.remoteDataSource});
  final isFetchingProducts = false.obs;
  final products = <ProductModel>[].obs;
  final errorMessage = ''.obs;
  // Example method to fetch products
  Future<void> fetchProducts() async {
    try {
      isFetchingProducts.value = true;
      final result = await remoteDataSource.getProducts();
      result.fold(
        (failure) {
          // Handle failure
          errorMessage.value = failure.message;
        },
        (apiProducts) {
          // Handle success
          products.value=apiProducts;
          Get.log('Products fetched successfully: ${products.toString()} items');
        },
      );
    } catch (e) {
      // Handle error
      errorMessage.value = 'An error occurred: $e';
      Get.log('Error fetching products: $e');
    } finally {
      isFetchingProducts.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    // Fetch products when the controller is initialized
    fetchProducts();
    // You can also use the following line to fetch products
  }
}
