import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';

abstract class NewestBooksStates {}

class NewestBooksInitialState extends NewestBooksStates {}

class NewestBooksLoadingState extends NewestBooksStates {}

class NewestBooksSuccessState extends NewestBooksStates {
  final List<BookModelItems?>? books;

  NewestBooksSuccessState(this.books);
}

class NewestBooksErrorState extends NewestBooksStates {
  final String errMessage;

  NewestBooksErrorState(this.errMessage);
}
