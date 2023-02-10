import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'features_listView_item.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              const FeaturesListViewItem(image: AssetsData.features_list_item),
          separatorBuilder: (context, index) => const SizedBox(
            width: 5.0,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
