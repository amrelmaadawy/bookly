import 'package:bookly_app/Features/splash/persentaion/views/widget/splashViewBody.dart';
import 'package:flutter/material.dart';

class splashView extends StatelessWidget {
  const splashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splashViewBody(),
    );
  }
}
