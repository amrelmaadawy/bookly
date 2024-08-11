import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static initial() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://www.googleapis.com/books/v1/',
      receiveDataWhenStatusError: true,
    ));
  }

  static getData({required String url, required Map<String, dynamic> quary})async {
  return await  dio!.get(url, queryParameters: quary);
  }
}
