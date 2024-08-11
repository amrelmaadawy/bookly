import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/BookRating.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/BooksAction.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/similarDetialesListView.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'customBookDetailesViewAppBar.dart';
import 'customBookItemListView.dart';

class detailesVeiwBody extends StatelessWidget {
  const detailesVeiwBody({Key? key, required this.bookModle}) : super(key: key);
  final BookModle bookModle;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    Color subTitleColor = (Colors.grey.shade400);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const customBookDetailesViewAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: customItemListView(
                imageUrl: bookModle.volumeInfo.imageLinks?.thumbnail ??
                    assets.errorImage,
              ),
            ),
            const SizedBox(
              height: 43,
            ),
            Text(
              bookModle.volumeInfo.title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              bookModle.volumeInfo.authors?[0] ?? 'Elmaadawy',
              style: TextStyle(fontSize: 17, color: subTitleColor),
            ),
            const SizedBox(
              height: 7,
            ),
            BookRating(
              rating: bookModle.volumeInfo.averageRating,
              count: bookModle.volumeInfo.ratingsCount,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 20,
            ),
             BooksAction(bookModle:bookModle ,),
            const SizedBox(
              height: 30,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
            const SizedBox(
              height: 10,
            ),
            const similarDetailesListView(),
          ],
        ),
      ),
    );
  }
}
