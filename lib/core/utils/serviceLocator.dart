import 'package:bookly_app/Features/home/data/repos/homeRepoImpl.dart';
import 'package:bookly_app/core/utils/apiService.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<homeRepoImpl>(homeRepoImpl(getIt.get<ApiService>()));
}
