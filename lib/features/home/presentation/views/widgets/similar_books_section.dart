import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:flutter/material.dart';

import 'similar_books_list.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({
    Key? key,
    required this.item,
  }) : super(key: key);

  final BookModelItems item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(
            top: 10.0,
            left: 30.0,
          ),
          child: Text(
            'You can also like',
            style: Styles.textStyle16,
          ),
        ),
        SimilarBooksList(),
      ],
    );
  }
}
