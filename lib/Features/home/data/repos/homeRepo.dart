import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';

abstract class HomeRepo {
  Future<Either<failure, List<BookModle>>> fetchBestSellerBooks();
  Future<Either<failure, List<BookModle>>> fetchFeatureBooks();
  Future<Either<failure, List<BookModle>>> fetchSimilarBooks(
      {required String category});
  Future<Either<failure, List<BookModle>>> fetchSearchBooks(
      {required String quary});
}
