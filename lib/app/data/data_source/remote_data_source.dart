import 'package:dartz/dartz.dart';
import 'package:getx_template/app/core/failures/failure.dart';
import 'package:getx_template/app/core/utils/api/dio_handler.dart';
import 'package:getx_template/app/data/models/product_model.dart';

class RemoteDataSource {
  final ODioHandler dioHandler;

  RemoteDataSource(this.dioHandler);

  // Example method to fetch products
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      final response = await dioHandler.get('/products');
      // Handle the response
      if (response.statusCode != 200) {
        return Left(ServerFailure('Failed to load products'));
      } else {
        // Assuming the response data is a list of products
        final List<ProductModel> products =
            (response.data as List)
                .map((product) => ProductModel.fromMap(product))
                .toList();
        return Right(products);
      }
    } catch (e) {
      // Handle error
      throw Exception('Failed to load products: $e');
    }
  }

  // Example method to fetch a single product
  addProductToCart(ProductModel product) async {
    try {
      final response = await dioHandler.post('/cart', data: product.toMap());
      // Handle the response
      if (response.statusCode != 200) {
        return Left(ServerFailure('Failed to add product to cart'));
      } else {
        return Right(true);
      }
    } catch (e) {
      // Handle error
      throw Exception('Failed to add product to cart: $e');
    }
  }
}
