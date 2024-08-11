import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepoImpl.dart';
import 'package:bookly_app/Features/home/persentaion/manager/similarBooksCubit/similarBooksCubit.dart';
import 'package:bookly_app/Features/home/persentaion/views/detailesView.dart';
import 'package:bookly_app/Features/home/persentaion/views/homeView.dart';
import 'package:bookly_app/Features/search/persientaion/views/searchView.dart';
import 'package:bookly_app/core/utils/serviceLocator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/persentaion/views/splashView.dart';

abstract class routs {
  static const khomeView = '/homeView';
  static const kDetailesView = '/DetailesView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const splashView(),
    ),
    GoRoute(
      path: khomeView,
      builder: (context, state) => const homeView(),
    ),
    GoRoute(
      path: kDetailesView,
      builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<homeRepoImpl>()),
          child: detailesView(
            bookModle: state.extra as BookModle,
          )),
    ),
    GoRoute(path: kSearchView, builder: (context, state) => const searchView())
  ]);
}
