import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/customButton.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModle});
  final BookModle bookModle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: customButton(
          onPressed: () {},
          text: 'Free',
          TextColor: Colors.black,
          backGroundColor: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        )),
        Expanded(
            child: customButton(
          onPressed: () async {
            Uri uri = Uri.parse(bookModle.volumeInfo.previewLink!);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
          text: 'Preview',
          TextColor: Colors.white,
          backGroundColor: Colors.deepOrange,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        ))
      ],
    );
  }
}
