import 'package:bookly/core/custom_widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manger/newest_books_cubit/NewestBooksCubit.dart';
import 'package:bookly/features/home/presentation/manger/newest_books_cubit/newest_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bestSeller_listView_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is NewestBooksSuccessState) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => BestSellerListViewItem(
                item: state.books![index]!,
              ),
              itemCount: state.books?.length,
            );
          } else if (state is NewestBooksErrorState) {
            return Center(
                child: CustomErrorWidget(
              errMessage: state.errMessage,
            ));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
