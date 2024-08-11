import 'package:dio/dio.dart';

abstract class failure {
  final String errmessage;
  failure(this.errmessage);
}

class serverFailure extends failure {
  // doesnot Handeled (it didnot work )check it later!!!!
  serverFailure(super.errmessage);
  factory serverFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return serverFailure('Connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return serverFailure('Send timeout with api server');

      case DioExceptionType.receiveTimeout:
        return serverFailure('Receive timeout with api server');

      case DioExceptionType.badCertificate:
        return serverFailure('server has bad certificate');

      case DioExceptionType.badResponse:
        return serverFailure.fromRespones(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return serverFailure('Request to ApiServer was canceld');

      case DioExceptionType.connectionError:
        return serverFailure('you have a bad connection please check it ');

      case DioExceptionType.unknown:
        return serverFailure('unexpected error please try again later ');
      default:
        return serverFailure('Opps There was an Error, Please try again');
    }
  }
  factory serverFailure.fromRespones(int statusCode, dynamic respones) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return serverFailure(respones['error']['message']);
    } else if (statusCode == 404) {
      return serverFailure('your request not found ,try later!');
    } else if (statusCode == 500) {
      return serverFailure('Internal Server error, Please try later');
    } else if (statusCode == 429) {
      return serverFailure('you complete your Queries per da ');
    } else {
      return serverFailure('Opps There was an Error, Please try again');
    }
  }
}
