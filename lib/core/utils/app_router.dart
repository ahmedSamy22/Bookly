import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchRouteKey,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
