import 'package:bookly_app/Features/search/persientaion/views/widgets/searchViewBody.dart';
import 'package:flutter/material.dart';

class searchView extends StatelessWidget {
  const searchView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchVeiwBody(),
          ],
        ),
      ),
    );
  }
}
