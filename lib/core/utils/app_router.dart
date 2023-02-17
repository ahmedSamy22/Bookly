import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/repos/home_repo_implementation.dart';

abstract class AppRouter {
  static String kHomeRouteKey = '/homeView';
  static String kBookRouteKey = '/BookDetailsView';
  static String kSearchRouteKey = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeRouteKey,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookRouteKey,
        builder: (context, state) => BlocProvider(
            create: (BuildContext context) =>
                SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(
              item: state.extra as BookModelItems,
            )),
      ),
      GoRoute(
        path: kSearchRouteKey,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
