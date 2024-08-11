import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:bookly_app/Features/home/persentaion/manager/searchBooksCubit/searchBookStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooksCubit extends Cubit<SearchBooksStates> {
  SearchBooksCubit(this.homeRepo) : super(InitialSearchBooksState());
  final HomeRepo homeRepo;
 

  Future<void> fetchSearch({required String quary}) async {
    emit(LoadinbgSearchBooksState());
    var resulte = await homeRepo.fetchSearchBooks(quary: quary);
    resulte.fold((failure) {
      emit(FailureSearchBooksState(failure.errmessage));
    }, (books) {
      emit(SuccessSearchBooksState());
    });
  }
}
