import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';

abstract class SimilarBooksStates {}

class SimilarBooksInitialState extends SimilarBooksStates {}

class SimilarBooksLoadingState extends SimilarBooksStates {}

class SimilarBooksSuccessState extends SimilarBooksStates {
  final List<BookModelItems?>? books;

  SimilarBooksSuccessState(this.books);
}

class SimilarBooksErrorState extends SimilarBooksStates {
  final String errMessage;

  SimilarBooksErrorState(this.errMessage);
}
