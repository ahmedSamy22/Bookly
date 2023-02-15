import 'package:dio/dio.dart';

class DioHelper {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  DioHelper(this.dio);

  Future<Map<String, dynamic>> getData({required String url}) async {
    var response = await dio.get('$_baseUrl$url');
    return response.data;
  }
}
