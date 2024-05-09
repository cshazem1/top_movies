import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/top_movie.dart';

class CustomMovieDerailsMakers extends StatelessWidget {
  const CustomMovieDerailsMakers({
    super.key,
    required this.movie,
  });

  final TopMovie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .24,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
              color: kSecondColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomScrollView(

                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Director",
                            style: Styles.textStyle30,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            height: movie.director.length * 100,
                            child: ListView.builder(
                              itemCount: movie.director.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Text(
                                  movie.director[index],
                                  style: Styles.textStyle20
                                      .copyWith(color: Colors.grey),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Writers",
                            style: Styles.textStyle30,
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ]),
                  ),
                  SliverFillRemaining(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: movie.writers.length,
                      itemBuilder: (context, index) {
                        return Text(
                          movie.writers[index],
                          style: Styles.textStyle20
                              .copyWith(color: Colors.grey),
                        );
                      },
                    ),
                  )
                ]),
          ),
        ));
  }
}
