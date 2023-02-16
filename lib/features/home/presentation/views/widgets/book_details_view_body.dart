import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'books_action_widget.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    Key? key,
  }) : super(key: key);

  // final BookModelItems item;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              BookDetailsSection(),
              BooksAction(),
              SimilarBooksSection(),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
