import 'package:flutter/material.dart';

class searchResultView extends StatelessWidget {
  const searchResultView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: ((context, index) => Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
        //  child:    BestSellerListViewItem(
                      
        //               )
        child:  Text(''),
            )),
        itemCount: 15);
  }
}
