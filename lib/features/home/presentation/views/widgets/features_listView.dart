import 'package:bookly/core/custom_widgets/custom_error_widget.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features_listView_item.dart';

class FeaturesListView extends StatelessWidget {
  const FeaturesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is FeaturedBooksSuccessState) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => FeaturesListViewItem(
                    image:
                        state.books![index]!.volumeInfo.imageLinks.thumbnail),
                itemCount: state.books!.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 8.0,
                ),
              ),
            );
          } else if (state is FeaturedBooksErrorState) {
            return Center(
              child: CustomErrorWidget(
                errMessage: state.errMessage,
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
