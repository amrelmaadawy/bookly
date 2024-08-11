import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksStates extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class SimilarBooksInitial extends SimilarBooksStates {}

class SimilarBooksSuccess extends SimilarBooksStates {
  final List<BookModle> books;
  SimilarBooksSuccess(this.books);
}

class SimilarBooksFailure extends SimilarBooksStates {
  final String errorMassasge;
  SimilarBooksFailure(this.errorMassasge);
}

class SimilarBooksLoading extends SimilarBooksStates {}
