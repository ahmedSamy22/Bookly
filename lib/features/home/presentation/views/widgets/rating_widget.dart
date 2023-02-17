import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int? ratingsCount;
  final num? avgRating;
  const RatingWidget({
    Key? key,
    required this.ratingsCount,
    required this.avgRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (ratingsCount != 0)
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
        if (ratingsCount == 0)
          const Icon(
            Icons.star,
            color: Colors.grey,
          ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          '$avgRating',
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          '($ratingsCount)',
          style: Styles.captionText14,
        ),
      ],
    );
  }
}
