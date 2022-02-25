import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  late String apiBaseUrl;

  late Map<String, String> _headers;

  ApiClient({required this.apiBaseUrl}) {
    baseUrl = apiBaseUrl;
    timeout = const Duration(seconds: 50);
    token = '';

    _headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri, headers: _headers);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
