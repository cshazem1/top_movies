import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/styles.dart';
import 'package:top_movies/features/home/presentation/views/widgets/custom_move_image.dart';
import 'package:top_movies/features/home/presentation/views/widgets/custom_movie_details_app_bar.dart';
import 'package:top_movies/features/home/presentation/views/widgets/movie_details_view_body.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants.dart';
import '../../data/models/top_movie.dart';

class MovieDetails extends StatelessWidget {
  final TopMovie movie;
  const MovieDetails(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: MovieDetailsViewBody(movie: movie,)
    );
  }


}

