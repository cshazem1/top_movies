import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/core/utils/api_service.dart';
import 'package:top_movies/core/utils/app_router.dart';
import 'package:top_movies/features/home/data/models/top_movie.dart';

import 'constants.dart';
import 'core/utils/service_located.dart';
import 'features/home/data/repo/home_repo_imp.dart';
import 'features/home/presentation/manager/top_movies_cubit.dart';

void main() {
  setup();

  runApp(TopMovies());
}

class TopMovies extends StatefulWidget {
  @override
  State<TopMovies> createState() => _TopMoviesState();
}

class _TopMoviesState extends State<TopMovies> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TopMoviesCubit(getIt.get<HomeRepoImp>()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }


}
