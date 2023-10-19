import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://api.escuelajs.co/api/v1/';

  Future<Map<String, dynamic>> get({
    required String endPoint,
  }) async {
    var response = await Dio().get(
      '$_baseUrl$endPoint',
    );
    return response.data;
  }
}
