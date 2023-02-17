import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/dio_helper.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final DioHelper dioHelper;

  HomeRepoImpl(this.dioHelper);

  @override
  Future<Either<Failure, List<BookModelItems?>?>> fetchNewestBooks() async {
    BookModel model;
    try {
      var data = await dioHelper.getData(
          url:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science');
      model = BookModel.fromJson(data);
      print(model.items![0]?.volumeInfo.title);
      return right(model.items);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModelItems?>?>> fetchFeaturesBooks() async {
    BookModel model;
    try {
      var data = await dioHelper.getData(
          url: 'volumes?Filtering=free-ebooks&q=subject:programming');
      model = BookModel.fromJson(data);
      return right(model.items);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModelItems?>?>> fetchSimilarBooks(
      {required String category}) async {
    BookModel model;
    try {
      var data = await dioHelper.getData(
          url:
              'volumes?Filtering=free-ebooks&Sorting=Relevance&q=subject:$category');

      model = BookModel.fromJson(data);
      return right(model.items);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
