import 'package:bookly_app/Features/home/persentaion/manager/newsetBooksCubit/newsetBooksCubit.dart';
import 'package:bookly_app/Features/home/persentaion/manager/newsetBooksCubit/newsetBooksState.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/bestSellerListViewItem.dart';
import 'package:bookly_app/core/utils/customErrorWidget.dart';
import 'package:bookly_app/core/widgets/customLoadingIndecator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is SuccessNewsetBooks) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                padding: EdgeInsets.zero,
              itemBuilder: ((context, index) =>  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: 
                   BestSellerListViewItem(

                   bookModle:state.books[index] ,),
                  )),
              itemCount: state.books.length);
        } else if (state is FailureNewsetBooks) {
          return CustomErrorWidget(errorMassage: state.errmasge);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
