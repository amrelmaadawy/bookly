import 'package:bookly_app/Features/home/persentaion/manager/similarBooksCubit/similarBooksCubit.dart';
import 'package:bookly_app/Features/home/persentaion/manager/similarBooksCubit/similarBooksStates.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/customBookItemListView.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/customErrorWidget.dart';
import 'package:bookly_app/core/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class similarDetailesListView extends StatelessWidget {
  const similarDetailesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount:state.books.length ,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) =>  Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 5),
                      child: GestureDetector(
                        onTap: (){
                           GoRouter.of(context).push(routs.kDetailesView,extra: state.books[index]);
                        },
                        child: customItemListView(
                          imageUrl:
                              state.books[index].volumeInfo.imageLinks?.thumbnail??assets.errorImage,
                        ),
                      ),
                    ))),
          );
        } else if (state is SimilarBooksFailure) {
         return CustomErrorWidget(errorMassage: state.errorMassasge);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
