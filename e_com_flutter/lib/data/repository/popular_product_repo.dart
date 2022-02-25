import 'package:e_com_flutter/data/api/api_client.dart';
import 'package:e_com_flutter/utils/app_constant.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProducts() async {
    return await apiClient.get(AppConstant.popularProductUrl);
  }
}
