import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final num? rating;
  final int? count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(
          width: 5,
        ),
         Text('($count)', style:const TextStyle(fontSize: 14, color: Colors.grey))
      ],
    );
  }
}
