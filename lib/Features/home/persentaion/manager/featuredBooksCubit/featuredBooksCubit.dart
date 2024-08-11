import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:bookly_app/Features/home/persentaion/manager/featuredBooksCubit/featuredBooksState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homerepo) : super(FeaturedBooksInitial());
  final HomeRepo homerepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homerepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errmessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
