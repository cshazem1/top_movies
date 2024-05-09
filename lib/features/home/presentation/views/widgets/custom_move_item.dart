import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:top_movies/constants.dart';
import 'package:top_movies/core/utils/app_router.dart';
import 'package:top_movies/core/utils/styles.dart';
import 'package:top_movies/features/home/data/models/top_movie.dart';
import 'custom_move_image.dart';
import 'custom_rating.dart';

class CustomMoveItem extends StatelessWidget {
  final TopMovie topMovie;
  const CustomMoveItem(
    this.topMovie, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.moviesDetails,extra: topMovie);
      },
      child: Stack(
        children: <Widget>[

          Positioned(
            top: 130.0,
            left: 20.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: AspectRatio(
                aspectRatio: 7 / 4,
                child: Container(
                  decoration: const BoxDecoration(
                      color: kSecondColor,
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                ),
              ),
            ),
          ),


          Positioned(
            top: 130.0, // Positioning of the widget within the stack
            left: MediaQuery.of(context).size.width * .5,
            right: MediaQuery.of(context).size.width * .04,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                topMovie.title,
                style: Styles.textStyle25,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                topMovie.description,
                style: Styles.textStyle20.copyWith(color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'time:  ${topMovie.year}',
                style: Styles.textStyle16.copyWith(color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomRating(topMovie),
            ]),
          ),
          // Widgets added to the stack will be displayed on top of each other
          Positioned(
            top: 50.0, // Positioning of the widget within the stack
            left: 50.0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width * .35,
                child: CustomMoveImage(topMovie.images[0][1])),
          ),
          Positioned(
              left: 170,
              top: MediaQuery.of(context).size.height * .04,
              child: Container(
                height: 50,
                padding: EdgeInsets.all(5),
                decoration:  BoxDecoration(
                    color: Colors.yellow.withOpacity(.78),
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      topMovie.rank.toString(),
                      style: Styles.textStyle20.copyWith(color: Colors.black,fontWeight:FontWeight.bold),
                    ),
                    const Icon(
                      
                      Icons.star,
                      color: Colors.black,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
