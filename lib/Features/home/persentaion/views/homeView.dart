import 'package:bookly_app/Features/home/persentaion/views/widgets/homeViewBody.dart';
import 'package:flutter/material.dart';

class homeView extends StatelessWidget {
  const homeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: home_View_Body(),
    );
  }
}
