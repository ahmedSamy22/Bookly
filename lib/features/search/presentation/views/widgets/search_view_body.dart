import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_search_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchField(),
          Padding(
            padding: EdgeInsets.only(
              top: 50.0,
              left: 10.0,
            ),
            child: Text(
              'Results',
              style: Styles.textStyle18,
            ),
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemBuilder: (context, index) => const BestSellerListViewItem(),
          //     itemCount: 10,
          //   ),
          // ),
        ],
      ),
    );
  }
}
