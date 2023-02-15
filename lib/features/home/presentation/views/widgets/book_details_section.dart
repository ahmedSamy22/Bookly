import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'features_listView_item.dart';
import 'rating_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: width * 0.25, vertical: 30.0),
          child:
              const FeaturesListViewItem(image: AssetsData.features_list_item),
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Rudyard Kipling',
          style: Styles.captionText18,
        ),
        const SizedBox(
          height: 10,
        ),
        // const RatingWidget(),
      ],
    );
  }
}
