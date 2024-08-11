import 'package:bookly_app/Features/home/data/repos/homeRepoImpl.dart';
import 'package:bookly_app/Features/home/persentaion/manager/featuredBooksCubit/featuredBooksCubit.dart';
import 'package:bookly_app/Features/home/persentaion/manager/newsetBooksCubit/newsetBooksCubit.dart';
import 'package:bookly_app/Features/splash/persentaion/views/constance.dart';
import 'package:bookly_app/core/utils/serviceLocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/routs.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => FeaturedBooksCubit(getIt.get<homeRepoImpl>())
            ..fetchFeatureBooks()),
        ),
        BlocProvider(
          create: ((context) => NewsetBooksCubit(getIt.get<homeRepoImpl>())..fetchNewsetBooks()),
        ),
      ],
      child: MaterialApp.router(
          routerConfig: routs.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
          )),
    );
  }
}
