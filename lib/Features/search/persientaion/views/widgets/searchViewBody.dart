import 'package:bookly_app/Features/search/persientaion/views/widgets/customSearchField.dart';
import 'package:bookly_app/Features/search/persientaion/views/widgets/searchResultView.dart';
import 'package:flutter/material.dart';

class SearchVeiwBody extends StatefulWidget {
  const SearchVeiwBody({super.key});

  @override
  State<SearchVeiwBody> createState() => _SearchVeiwBodyState();
}

class _SearchVeiwBodyState extends State<SearchVeiwBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 720,
        child: Column(
          children: [
            customSearchField(onChange: (value) {
             
            }),
            Expanded(
                child: searchResultView(
            
            ))
            // watch out !!! error in scroll
          ],
        ),
      ),
    );
  }
}
