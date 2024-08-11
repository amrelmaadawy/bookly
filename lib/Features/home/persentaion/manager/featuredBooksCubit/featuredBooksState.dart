import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
  @override
  List<Object?> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String error;
  const FeaturedBooksFailure(this.error);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModle> books;
  const FeaturedBooksSuccess(this.books);
}
