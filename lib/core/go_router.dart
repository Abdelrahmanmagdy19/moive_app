import 'package:go_router/go_router.dart';
import 'package:moive_app/features/Home/presentation/views/home_view.dart';
import 'package:moive_app/features/Search/presentation/views/moivesViews.dart';
import 'package:moive_app/features/Search/presentation/views/search_view.dart';
import 'package:moive_app/features/Splash/presentation/views/splash_views.dart';
import 'package:moive_app/features/onTapMoive/presentation/views/on_Tap_view.dart';

abstract class AppRouter {
  static const homeView = '/HomePage';
  static const searchView = '/searchView';
  static const onTapView = '/onTapView';
  static const moviesView = '/moviesView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: moviesView,
        builder: (context, state) {
          final category = state.extra as String;
          return MoviesView(category: category);
        },
      ),
      GoRoute(
        path: onTapView,
        builder: (context, state) {
          final movieData = state.extra as Map<String, String>? ?? {};
          return OnTapView(
            imageUrl: movieData['imageUrl'] ?? '',
            originalTitle: movieData['originalTitle'] ?? '',
            overview: movieData['overview'] ?? '',
            releaseDate: movieData['releaseDate'] ?? '',
          );
        },
      ),
    ],
  );
}
