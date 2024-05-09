import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:top_movies/core/utils/styles.dart';
import 'package:top_movies/features/home/data/models/top_movie.dart';

class CustomRating extends StatelessWidget {
 final TopMovie topMovie;
  const CustomRating( this.topMovie, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(topMovie.rating, style: Styles.textStyle18),
        const SizedBox(
          width: 10,
        ),
        RatingBarIndicator(
          rating: double.parse(topMovie.rating)/2,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemCount: 5,
          itemSize: 20.0,
          direction: Axis.horizontal,
        ),
      ],
    );
  }
}
