import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModelItems> books;
  FeaturedBooksSuccessState(this.books);
}

class FeaturedBooksErrorState extends FeaturedBooksStates {
  final String errMessage;
  FeaturedBooksErrorState(this.errMessage);
}
