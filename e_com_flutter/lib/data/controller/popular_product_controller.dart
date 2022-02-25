import 'package:e_com_flutter/data/model/products_model.dart';
import 'package:e_com_flutter/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  List<Products> popularProducts = [];

  Future<void> getPopularProducts() async {
    Response response = await popularProductRepo.getPopularProducts();
    print('get popular products controller');
    if (response.statusCode == 200) {
      popularProducts = [];
      popularProducts.addAll(ProductModel.fromJson(response.body).products);
      update();
    } else {
      //
    }
  }
}
