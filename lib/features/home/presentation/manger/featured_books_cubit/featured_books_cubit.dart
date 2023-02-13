import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  FeaturedBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());

    var response = await homeRepo.fetchFeaturesBooks();

    response.fold((failure) {
      print(failure.errMessage);
      emit(FeaturedBooksErrorState(failure.errMessage));
    }, (books) {
      print(books?.length);
      emit(FeaturedBooksSuccessState(books));
    });
  }
}
