import 'package:equatable/equatable.dart';

abstract class SearchBooksStates extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class InitialSearchBooksState extends SearchBooksStates {}

class SuccessSearchBooksState extends SearchBooksStates {}

class FailureSearchBooksState extends SearchBooksStates {
  final String errorMassage;
  FailureSearchBooksState(this.errorMassage);
}

class LoadinbgSearchBooksState extends SearchBooksStates {}
