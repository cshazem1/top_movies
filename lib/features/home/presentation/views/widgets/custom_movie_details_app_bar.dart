import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomMovieDetailsAppBar extends StatelessWidget {
  const CustomMovieDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            iconSize: 30,
            tooltip: "Close,",
            style: const ButtonStyle(
              tapTargetSize:
              MaterialTapTargetSize.shrinkWrap, // the '2023' part
            )),
        IconButton(
            tooltip: "shoppingCart,",
            onPressed: () {},
            icon: const Icon(Icons.list),
            iconSize: 30),
      ],
    );
  }
}
