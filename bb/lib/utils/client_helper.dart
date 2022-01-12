import 'package:dio/dio.dart';

Dio setDio({required String token}) {
  Dio _dio = Dio();
  _dio.options.headers['content-type'] = "application/json";
  _dio.options.headers['authorization'] = "Bearer " + token;
  return _dio;
}