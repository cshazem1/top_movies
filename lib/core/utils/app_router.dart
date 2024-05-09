import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:top_movies/core/utils/api_service.dart';
import 'package:top_movies/core/utils/service_located.dart';
import 'package:top_movies/features/home/data/models/top_movie.dart';
import 'package:top_movies/features/home/data/repo/home_repo_imp.dart';
import 'package:top_movies/features/home/presentation/manager/top_movies_cubit.dart';
import 'package:top_movies/features/home/presentation/views/home_view.dart';
import 'package:top_movies/features/home/presentation/views/movie_details_view.dart';
import 'package:top_movies/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const String homeViews = '/HomeViews';
  static const String moviesDetails = '/MoviesDetails';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(

        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },

      ),
      GoRoute(

        path: homeViews,
        builder: (BuildContext context, GoRouterState state) {
          return
            HomeView();
        },

      ),

      GoRoute(

        path: moviesDetails,
        builder: (BuildContext context, GoRouterState state) {
          return MovieDetails(state.extra as TopMovie);
        },

      ),
    ],
  );

}