import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'features_listView_item.dart';

class FeaturesListView extends StatelessWidget {
  const FeaturesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            const FeaturesListViewItem(image: AssetsData.features_list_item),
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(
          width: 5.0,
        ),
      ),
    );
  }
}
