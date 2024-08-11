import 'package:flutter/cupertino.dart';
import 'BestSellerListView.dart';
import 'customAppBar.dart';
import 'listViewBuilder.dart';

class home_View_Body extends StatelessWidget {
  const home_View_Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBar(),
          featureListViewBuilder(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Newset Books',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
