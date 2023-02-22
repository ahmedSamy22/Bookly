import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/dio_helper.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final DioHelper dioHelper;
  SearchRepoImpl(this.dioHelper);

  @override
  Future<Either<Failure, List<BookModelItems?>?>> fetchSearchBooks(
      {required String category}) async {
    BookModel model;
    try {
      var data = await dioHelper.getData(
          url: 'volumes?Filtering=free-ebooks&q=$category');

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
