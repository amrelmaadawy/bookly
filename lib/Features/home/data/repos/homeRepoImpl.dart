import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/apiService.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class homeRepoImpl implements HomeRepo {
  final ApiService apiService;
  homeRepoImpl(this.apiService);
  @override
  Future<Either<failure, List<BookModle>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Sorting=newset&q=عمرو عبدالحميد&filtering=free-ebooks');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<BookModle>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=محمد طه &filtering=free-ebooks');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<BookModle>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=دون&sorting=relevance');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<BookModle>>> fetchSearchBooks(
      {required String quary}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=$quary &Sorting=relevance');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }
}
