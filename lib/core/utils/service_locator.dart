import 'package:bookly/core/utils/dio_helper.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<DioHelper>(
    DioHelper(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<DioHelper>(),
  ));
}
