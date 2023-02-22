import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'books_action_widget.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    Key? key,
    required this.item,
  }) : super(key: key);

  final BookModelItems item;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BookDetailsSection(
                item: item,
              ),
              const BooksAction(),
              SimilarBooksSection(
                item: item,
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
