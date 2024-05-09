

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:top_movies/constants.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8)),

        child: Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          baseColor: kPrimaryColor,
          highlightColor: Colors.grey.shade600,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
