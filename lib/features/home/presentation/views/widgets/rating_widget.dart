import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int? ratingsCount;
  final num? avgRating;
  const RatingWidget({
    Key? key,
    this.ratingsCount,
    this.avgRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
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
