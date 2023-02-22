import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:bookly/features/search/presentation/manger/search_cubit/search_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooksCubit extends Cubit<SearchBooksStates> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitialState());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String category}) async {
    emit(SearchBooksLoadingState());

    var response = await searchRepo.fetchSearchBooks(category: category);
    response.fold((failure) {
      emit(SearchBooksErrorState(failure.errMessage));
    }, (books) {
      emit(SearchBooksSuccessState(books));
    });
  }
}
