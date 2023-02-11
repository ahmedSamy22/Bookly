import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModelItems?>?>> fetchFeaturesBooks();
  Future<Either<Failure, List<BookModelItems?>?>> fetchNewestBooks();
}
