import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/customBookItemListView.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'BookRating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.bookModle})
      : super(key: key);
  final BookModle bookModle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(routs.kDetailesView,extra: bookModle);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customItemListView(
              imageUrl: bookModle.volumeInfo.imageLinks?.thumbnail ??
                  assets.errorImage,
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModle.volumeInfo.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModle.volumeInfo.authors?[0] ?? 'Elmaadawy',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: bookModle.volumeInfo.averageRating ?? 0,
                        count: bookModle.volumeInfo.ratingsCount ?? 0,
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
