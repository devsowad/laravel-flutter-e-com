import 'package:e_com_flutter/data/api/api_client.dart';
import 'package:e_com_flutter/data/controller/popular_product_controller.dart';
import 'package:e_com_flutter/data/repository/popular_product_repo.dart';
import 'package:e_com_flutter/utils/app_constant.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(apiBaseUrl: AppConstant.baseUrl));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
