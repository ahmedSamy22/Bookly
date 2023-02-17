import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());
  SimilarBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoadingState());
    var response = await homeRepo.fetchSimilarBooks(category: category);
    response.fold((failure) {
      emit(SimilarBooksErrorState(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccessState(books));
    });
  }
}
