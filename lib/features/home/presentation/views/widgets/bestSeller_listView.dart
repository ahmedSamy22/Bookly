import 'package:flutter/material.dart';
import 'bestSeller_listView_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BestSellerListViewItem(),
      itemCount: 10,
    );
  }
}
