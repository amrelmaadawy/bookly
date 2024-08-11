import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:equatable/equatable.dart';

abstract class NewsetBooksState extends Equatable {
  const NewsetBooksState();
  @override
  List<Object?> get props => [];
}

class InitialNewsetBooks extends NewsetBooksState {}

class LoadingNewsetBooks extends NewsetBooksState {}

class FailureNewsetBooks extends NewsetBooksState {
  final String errmasge;
  const FailureNewsetBooks(this.errmasge);
}

class SuccessNewsetBooks extends NewsetBooksState {
  final List<BookModle> books;
  const SuccessNewsetBooks(this.books);
}
