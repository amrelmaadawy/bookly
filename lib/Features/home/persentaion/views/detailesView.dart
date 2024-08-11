import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/Features/home/persentaion/manager/similarBooksCubit/similarBooksCubit.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/detailesBodyView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class detailesView extends StatefulWidget {
  const detailesView( {Key? key, required this.bookModle}) : super(key: key);
final BookModle bookModle;
  @override
  State<detailesView> createState() => _detailesViewState();
  
}
class _detailesViewState extends State<detailesView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).featchSimilarBooks(category: widget.bookModle.volumeInfo.categories?[0]??'');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: detailesVeiwBody(bookModle: widget.bookModle,),
      ),
    );
  }
}
