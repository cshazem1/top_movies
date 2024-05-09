import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/core/widgets/custom_loading.dart';
import 'package:top_movies/features/home/data/models/top_movie.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomMoveImage extends StatelessWidget {
  String image;
  CustomMoveImage(
    this.image, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child:CachedNetworkImage(
        imageUrl: image,
        placeholder: (context, url) => const CustomLoading(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
