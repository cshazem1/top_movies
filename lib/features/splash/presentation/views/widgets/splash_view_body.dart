import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/core/utils/styles.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../home/presentation/manager/top_movies_cubit.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToHome();
      BlocProvider.of<TopMoviesCubit>(context).fetchTopMovies();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(AssetsData.videoPlayerIcon, fit: BoxFit.fill)
                  .animate()
                  .flip(duration: 400.ms)
                  .then(delay: 200.ms) // baseline=800ms
                  .slide()),
          const Text(
            "Top Movies",
            style: Styles.textStyle18
          )
              .animate()
              .flip(duration: 400.ms)
              .then(delay: 200.ms) // baseline=800ms
              .scale()
        ],
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      AppRouter.router.push(AppRouter.homeViews);
    });
  }
}
