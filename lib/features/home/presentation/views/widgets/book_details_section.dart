import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:flutter/material.dart';
import 'features_listView_item.dart';
import 'rating_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.item}) : super(key: key);
  final BookModelItems item;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: width * 0.25, vertical: 30.0),
          child: FeaturesListViewItem(
              image: item.volumeInfo.imageLinks?.thumbnail ??
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxi6-CoWE4o6BlONAowkhTEeEVBjbo9C_aH0mq0aKA5ZtAEt-R8U4oMVKbCDcHquktvT0&usqp=CAU'),
        ),
        Text(
          item.volumeInfo.title!,
          style: Styles.textStyle30,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          item.volumeInfo.authors![0]!,
          style: Styles.captionText18,
        ),
        const SizedBox(
          height: 10,
        ),
        RatingWidget(
          avgRating: item.volumeInfo.averageRating ?? 0,
          ratingsCount: item.volumeInfo.ratingsCount ?? 0,
        ),
      ],
    );
  }
}
