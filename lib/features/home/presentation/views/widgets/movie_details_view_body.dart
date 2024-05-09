import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/function/launch_url.dart';
import '../../../data/models/top_movie.dart';
import 'custom_move_image.dart';
import 'custom_movie_derails_makers.dart';
import 'custom_movie_details_app_bar.dart';
import 'move_details_section.dart';

class MovieDetailsViewBody extends StatelessWidget {
  final TopMovie movie;

  const MovieDetailsViewBody({
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            child: SizedBox(
                height: MediaQuery.of(context).size.height * .40,
                width: MediaQuery.of(context).size.width,
                child: CustomMoveImage(movie.images[2][1]))),
        Positioned(
            top: MediaQuery.of(context).size.height * .33,
            child: MoviesDetailsSection(movie: movie)),
        Positioned(
            right: 40,
            top: MediaQuery.of(context).size.height * .31,
            child: GestureDetector(
              onTap: () {
                launchCustomUr(context, movie.link);
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                    color: kBlueColor,
                    borderRadius: BorderRadius.all(Radius.circular(5000))),
                child: const Icon(
                  Icons.play_arrow,
                ),
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * .75,
            child: CustomMovieDerailsMakers(movie: movie)),
        Positioned(
            top: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const SafeArea(child: CustomMovieDetailsAppBar()))),
      ],
    );
  }
}
