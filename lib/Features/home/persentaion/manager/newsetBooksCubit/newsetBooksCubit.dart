import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:bookly_app/Features/home/persentaion/manager/newsetBooksCubit/newsetBooksState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(InitialNewsetBooks());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(LoadingNewsetBooks());
    var resulte = await homeRepo.fetchBestSellerBooks();
    resulte.fold((failure) {
      emit(FailureNewsetBooks(failure.errmessage));
    }, (books) {
      emit(SuccessNewsetBooks(books));
    });
  }
}
