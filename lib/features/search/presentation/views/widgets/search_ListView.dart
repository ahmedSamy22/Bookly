import 'package:bookly/core/custom_widgets/custom_error_widget.dart';
import 'package:bookly/features/search/presentation/manger/search_cubit/SearchBooksCubit.dart';
import 'package:bookly/features/search/presentation/manger/search_cubit/search_books_states.dart';
import 'package:bookly/features/search/presentation/views/widgets/searchListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBooksCubit, SearchBooksStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SearchBooksSuccessState) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => SearchListViewItem(
                item: state.books![index]!,
              ),
              itemCount: state.books!.length,
            ),
          );
        } else if (state is SearchBooksErrorState) {
          return Center(
              child: CustomErrorWidget(
            errMessage: state.errMessage,
          ));
        } else {
          return Container();
        }
      },
    );
  }
}
