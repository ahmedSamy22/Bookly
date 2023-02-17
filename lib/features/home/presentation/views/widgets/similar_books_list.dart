import 'package:bookly/core/custom_widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features_listView_item.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({
    Key? key,
    //  required this.item,
  }) : super(key: key);

  //final BookModelItems item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => FeaturesListViewItem(
                    image: state
                            .books![index]!.volumeInfo.imageLinks?.thumbnail ??
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxi6-CoWE4o6BlONAowkhTEeEVBjbo9C_aH0mq0aKA5ZtAEt-R8U4oMVKbCDcHquktvT0&usqp=CAU'),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 5.0,
                ),
                itemCount: state.books!.length,
              ),
            ),
          );
        } else if (state is SimilarBooksErrorState) {
          return Center(child: CustomErrorWidget(errMessage: state.errMessage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
