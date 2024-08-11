
import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:bookly_app/Features/home/persentaion/manager/similarBooksCubit/similarBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchSimilarBooks({required String category}) async {
    var result = await homeRepo.fetchSimilarBooks(category: category);
    emit(SimilarBooksLoading());
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errmessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
