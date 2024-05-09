import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/top_movie.dart';

class MoviesDetailsSection extends StatelessWidget {
  const MoviesDetailsSection({
    super.key,
    required this.movie,
  });

  final TopMovie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .40,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
              color: kSecondColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    movie.title,
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  /* const CustomRating(),*/
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    movie.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: Styles.textStyle20
                        .copyWith(color: Colors.grey.withOpacity(.8)),
                  )
                ]),
          ),
        ));
  }
}
