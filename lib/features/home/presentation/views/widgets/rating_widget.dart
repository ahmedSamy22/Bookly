import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          '4.8',
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          '(2390)',
          style: Styles.captionText14,
        ),
      ],
    );
  }
}
