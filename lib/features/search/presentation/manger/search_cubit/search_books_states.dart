import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';

abstract class SearchBooksStates {}

class SearchBooksInitialState extends SearchBooksStates {}

class SearchBooksLoadingState extends SearchBooksStates {}

class SearchBooksSuccessState extends SearchBooksStates {
  final List<BookModelItems?>? books;

  SearchBooksSuccessState(this.books);
}

class SearchBooksErrorState extends SearchBooksStates {
  final String errMessage;

  SearchBooksErrorState(this.errMessage);
}
